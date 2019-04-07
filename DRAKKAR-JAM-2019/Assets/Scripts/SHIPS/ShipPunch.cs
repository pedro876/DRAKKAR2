using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShipPunch : MonoBehaviour
{

    [SerializeField] [Tooltip("-1 indica izquierda, 1 indica derecha")]int side = 1;
    [SerializeField] float pushTime = 1f;
    [SerializeField] float pushedWaitTime = 1f;
    [SerializeField] float coolDown = 5f;
    [SerializeField] float maxDisplacement = 3f;

    bool pushing = false;
    float counter = 0;
    Vector3 resetPos;
    Quaternion resetRot;
    [SerializeField] AudioSource punchSound;


    // Update is called once per frame
    void Update()
    {
        if (pushing)
        {
            float timeDifference = counter;
            counter += Time.deltaTime;
            if (timeDifference <= pushTime)
            {
                transform.position += (transform.right * maxDisplacement * (counter - timeDifference)/pushTime) * side;
            } else if (timeDifference <= pushedWaitTime + pushTime)
            {

            } else if(timeDifference <= coolDown + pushTime + pushedWaitTime)
            {
                transform.position += (transform.right * -maxDisplacement * (counter - timeDifference) / coolDown) * side;
            } else
            {
                transform.localPosition = resetPos;
                transform.localRotation = resetRot;
                pushing = false;
                counter = 0;
            }
        }
    }

    public void punch()
    {
        if (!pushing)
        {
            punchSound.Play();
            pushing = true;
            counter = 0;
            resetPos = transform.localPosition;
            resetRot = transform.localRotation;
        }
    }
    private void OnTriggerEnter(Collider other)
    {
        if (pushing)
        {
            other.gameObject.GetComponent<ShipMove>().getHit(transform.right * side);
        }
    }
}
