using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShipMove : MonoBehaviour
{
    [Header("Input variables")]
    [SerializeField] string forwardKey  = "w";
    [SerializeField] string leftwardKey = "a";
    [SerializeField] string backwardKey = "s";
    [SerializeField] string rightwardKey= "d";
    [SerializeField] string hitRightKey = "e";
    [SerializeField] string hitLeftKey  = "q";
    


    [Header("Move variables")]
    [SerializeField] float xAcceleration  = 1f;
    [SerializeField] float veerAcceleration     = 1f;
    [SerializeField] float X_AxisMaxSpeed       = 10f;
    [SerializeField] float veerMaxSpeed         = 5f;
    int xInput = 0;
    int veerInput = 0;
    float xSpeed = 0f;
    float veerSpeed = 0f;
    bool hitRight = false;
    bool hitLeft = false;

    [Header("Hit variables")]
    [SerializeField] float hitPower = 5f;
    Vector3 hitDirection = new Vector3();
    [SerializeField] float powerLossTime = 3f;
    float hitCounter = 0f;
    //[SerializeField] Transform agua;

    
    

    //ADJUST VARIABLES
    [Header("Adjust variables")]
    [SerializeField][Range(0.1f,7f)] float raycastDisplacement = 0.3f;
    public bool canMove = true;
    //Transform[] rayCastOrigins;
    Rigidbody rb;
    int layerMask;
    [SerializeField] WindController wc;

    [Header("Punch references")]
    [SerializeField] ShipPunch rightPuncher;
    [SerializeField] ShipPunch leftPuncher;
    [SerializeField] AudioSource hitSound;


    // Start is called before the first frame update
    void Start()
    {

        //StartCoroutine("startWind");
        //Time.timeScale = 0.05f;
        //rayCastOrigins = GetComponentsInChildren<Transform>();
        rb = GetComponent<Rigidbody>();
        layerMask = LayerMask.GetMask("WaterSurface");
    }

    void Update()
    {
        manageInputs();
        //wavePositioning();
        
    }

    private void FixedUpdate()
    {
        if (canMove)
        {
            wavePositioning();
            //FORWARD
            xSpeed += ((float)xInput - (xSpeed / X_AxisMaxSpeed)) * xAcceleration;
            xSpeed = Mathf.Clamp(xSpeed, /*-X_AxisMaxSpeed*/0f, X_AxisMaxSpeed);
            Vector3 dir = xSpeed * transform.forward.normalized;
            rb.velocity = dir;

            //SIDES
            veerSpeed += ((float)veerInput - (veerSpeed / veerMaxSpeed)) * veerAcceleration;
            veerSpeed = Mathf.Clamp(veerSpeed, -veerMaxSpeed, veerMaxSpeed);
            rb.AddTorque(transform.up * veerSpeed, ForceMode.Force);
        }
        hitControl();
        windControl();
    }
    private void hitControl()
    {
        Vector3 proportionalDirection = new Vector3();
        if(hitDirection.magnitude > 0.02f)
        {
            if (hitCounter < powerLossTime - 0.05f)
            {
                proportionalDirection = hitDirection * (1 - (hitCounter/powerLossTime));
                hitCounter += Time.fixedDeltaTime;
                //print("adding vel");
                print(hitCounter);
            }
            else
            {
                hitDirection = new Vector3();
                hitCounter = 0f;
            }
        }
        
        rb.velocity += proportionalDirection;
    }
    private void windControl()
    {

        rb.AddForce(new Vector3(wc.windDirection.x, 0f, wc.windDirection.y));
    }

    private void manageInputs()
    {
        xInput = 0;
        if (Input.GetKey(forwardKey))   xInput += 1;
        if (Input.GetKey(backwardKey))  xInput -= 1;

        veerInput = 0;
        if (Input.GetKey(rightwardKey)) veerInput += 1;
        if (Input.GetKey(leftwardKey))  veerInput -= 1;

        hitRight = Input.GetKeyDown(hitRightKey);
        hitLeft  = Input.GetKeyDown(hitLeftKey);

        if (hitRight) rightPuncher.punch();
        if (hitLeft) leftPuncher.punch();
    }
    public void wavePositioning()
    {
        RaycastHit hit;
        Vector3 correctNormal = new Vector3();
        if (Physics.Raycast(transform.position + Vector3.up * 3 + transform.forward * raycastDisplacement, /*-transform.up*/-Vector3.up, out hit, 100f, layerMask))
        {
            correctNormal += hit.normal;
        }
        if (Physics.Raycast(transform.position + Vector3.up * 3 - transform.forward * raycastDisplacement, /*-transform.up*/-Vector3.up, out hit, 100f, layerMask))
        {
            correctNormal += hit.normal;
        }
        if (Physics.Raycast(transform.position + Vector3.up * 3 + transform.forward * raycastDisplacement/2, /*-transform.up*/-Vector3.up, out hit, 100f, layerMask))
        {
            correctNormal += hit.normal;
        }
        if (Physics.Raycast(transform.position + Vector3.up * 3 - transform.forward * raycastDisplacement/2, /*-transform.up*/-Vector3.up, out hit, 100f, layerMask))
        {
            correctNormal += hit.normal;
        }
        if (Physics.Raycast(transform.position + Vector3.up * 3 + transform.right * raycastDisplacement, /*-transform.up*/-Vector3.up, out hit, 100f, layerMask))
        {
            correctNormal += hit.normal;
        }
        if (Physics.Raycast(transform.position + Vector3.up * 3 - transform.right * raycastDisplacement, /*-transform.up*/-Vector3.up, out hit, 100f, layerMask))
        {
            correctNormal += hit.normal;
        }
        if (Physics.Raycast(transform.position + Vector3.up*3, /*-transform.up*/-Vector3.up, out hit, 100f, layerMask))
        {
            transform.position = hit.point;
            Vector3 auxForward = transform.forward;
            //correctNormal += hit.normal;
            correctNormal = correctNormal.normalized;
            transform.up = correctNormal;
            float angle = Vector3.Angle(auxForward, transform.forward);
            Vector3 crossProduct = Vector3.Cross(Vector3.ProjectOnPlane(auxForward, Vector3.up),
                Vector3.ProjectOnPlane(transform.forward, Vector3.up));
            if (crossProduct.y > 0)
            {
                angle = -angle;
            }
            transform.Rotate(transform.up, angle);
        } 
    }

    public void getHit(Vector3 dir)
    {
        hitCounter = 0f;
        hitDirection = dir * hitPower;
        hitSound.Play();
        print("someone was hit");
    }
    public void stopHit()
    {
        hitCounter = 0f;
        hitDirection = new Vector3();
    }
}
