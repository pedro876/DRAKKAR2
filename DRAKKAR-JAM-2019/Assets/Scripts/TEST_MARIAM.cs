using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TEST_MARIAM : MonoBehaviour
{

    // Start is called before the first frame update
    void Start()
    {
        this.GetComponent<MeshRenderer>().material.SetVector("_DirectionXY", new Vector4(1f, 1f, 0, 0));


    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
