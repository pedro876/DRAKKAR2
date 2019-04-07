using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TEST_SCRIPT : MonoBehaviour
{
    [Header("Variables de movimiento")]
    [SerializeField] Vector3 vel = new Vector3();
    [HideInInspector] public bool canMove = true;

    [Header("Variables de los poderes")]
    [SerializeField] [Range(0,10)] [Tooltip("Esta variable indica la fuerza del poder del personaje")]float power = 5;

    [Header("Perfil del personaje")]
    [SerializeField] string name = "";
    [SerializeField] [TextArea(3,10)]string description = "";

    [Header("Variables de cámara")]
    [SerializeField] GameObject camera;

    // Start is called before the first frame update
    void Start()
    {
        camera = GameObject.FindGameObjectWithTag("MainCamera");
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Return))
        {
            print("pulsaste enter");
        }
    }
}
