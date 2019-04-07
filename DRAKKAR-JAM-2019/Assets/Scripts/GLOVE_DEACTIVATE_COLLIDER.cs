using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GLOVE_DEACTIVATE_COLLIDER : MonoBehaviour
{
    BoxCollider bc;

    // Start is called before the first frame update
    void Start()
    {
        bc = GetComponent<BoxCollider>();
        bc.enabled = false;
    }
}
