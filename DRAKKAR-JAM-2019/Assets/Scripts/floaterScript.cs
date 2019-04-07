using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class floaterScript : MonoBehaviour
{
    [SerializeField] Transform origin;
    [SerializeField] float minDistance = 3f;
    [SerializeField] float maxDistance = 12f;

    float distance;
    Vector2 direction;
    int layerMask;

    // Start is called before the first frame update
    void Start()
    {
        layerMask = LayerMask.GetMask("WaterSurface");
        direction = new Vector2(Random.Range(-100, 100), Random.Range(-100, 100)).normalized;
        distance = Random.Range(minDistance, maxDistance);
        transform.position = origin.position + new Vector3(direction.x,0f,direction.y) * distance;
    }

    // Update is called once per frame
    void Update()
    {
        RaycastHit hit;
        if (Physics.Raycast(transform.position + Vector3.up * 3, /*-transform.up*/-Vector3.up, out hit, 100f, layerMask))
        {
            transform.position = hit.point;
            /*Vector3 auxForward = transform.forward;
            correctNormal = correctNormal.normalized;*/
            transform.up = hit.normal;
            //float angle = Vector3.Angle(auxForward, transform.forward);
            /*Vector3 crossProduct = Vector3.Cross(Vector3.ProjectOnPlane(auxForward, Vector3.up),
                Vector3.ProjectOnPlane(transform.forward, Vector3.up));
            if (crossProduct.y > 0)
            {
                angle = -angle;
            }
            transform.Rotate(transform.up, angle);*/
        }
    }
}
