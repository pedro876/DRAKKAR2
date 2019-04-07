using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraScript : MonoBehaviour
{
    [SerializeField] GetMidPoint gmp;
    [SerializeField] float extraZoom = 0f;

    public bool stop = false;

    void LateUpdate()
    {
        if(!stop)
         transform.position = gmp.midPos - transform.forward * (gmp.zoom + extraZoom);
    }
}
