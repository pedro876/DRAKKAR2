using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class floaterScript : MonoBehaviour
{
    [SerializeField] Transform origin;
    [SerializeField] float minDistance = 3f;
    [SerializeField] float maxDistance = 12f;
    [SerializeField] float power = 20f;
    float distance;
    Vector2 direction;
    int layerMask;

    /*[SerializeField] float minTime = 3f;
    [SerializeField] float maxTime = 10f;
    bool hidden = false;*/

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
            print("col");
            transform.position = hit.point;
            transform.up = hit.normal;
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.tag == "player")
        {
            collision.gameObject.GetComponent<ShipMove>().getHitByFloat(power, (collision.transform.position - transform.position).normalized);
        }
    }


}
