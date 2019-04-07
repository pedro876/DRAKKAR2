using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindController : MonoBehaviour
{
    [Header("Wind variables")]
    [SerializeField] float windPower = 5f;
    [HideInInspector]public Vector2 windDirection = new Vector2();
    float timeForWave = 0f;
    float duringTimeForWave = 0f;

    [SerializeField] float minTimeForWave = 3f;
    [SerializeField] float maxTimeForWave = 20f;
    [SerializeField] float minDuringTimeForWave = 5f;
    [SerializeField] float maxDuringTimeForWave = 20f;

    [SerializeField] Rigidbody[] players;
    [SerializeField] GameObject water;

    Vector3 waterSpeed = new Vector3();

    private void Start()
    {
        StartCoroutine("startWind");
    }

    private void LateUpdate()
    {
        water.GetComponentInChildren<MeshRenderer>().material.SetVector("_DirectionXY", new Vector4(windDirection.x/2f, windDirection.y/2f, 0, 0));
    }

    IEnumerator startWind()
    {
        timeForWave = Random.Range(minTimeForWave, maxTimeForWave);
        windDirection = new Vector2();
        print("stopping wind");
        yield return new WaitForSeconds(timeForWave);
        duringTimeForWave = Random.Range(minDuringTimeForWave, maxDuringTimeForWave);
        windDirection = new Vector2(Random.Range(-187, 187), Random.Range(-187, 187)).normalized * windPower;
        /*MeshRenderer[] mr = water.GetComponentsInChildren<MeshRenderer>();
        foreach(MeshRenderer m in mr)
        {
            m.material.SetVector("_DirectionXY", new Vector4(windDirection.x, windDirection.y, 0, 0));
        }*/

        //water.GetComponent<MeshRenderer>().material.SetVector("_DirectionXY", new Vector4(windDirection.x, windDirection.y, 0, 0));
        print("applying wind of " + windDirection);
        yield return new WaitForSeconds(duringTimeForWave);
        StartCoroutine("startWind");
    }
}
