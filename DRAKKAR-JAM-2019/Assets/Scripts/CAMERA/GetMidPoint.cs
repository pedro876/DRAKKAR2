using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GetMidPoint : MonoBehaviour
{

    public Vector3 midPos = new Vector3();
    public float zoom = 0f;

    /*[SerializeField] Transform start;
    [SerializeField] Transform end;*/
    public List<Transform> players = new List<Transform>();
    [SerializeField] CameraScript cs;


    // Update is called once per frame
    void Update()
    {

        Vector3 auxPos = new Vector3(0f, 0f, 0f);
        int count = 0;
        foreach (Transform player in players)
        {
            count++;
            auxPos += player.position;
        }
        if(count > 0)
        {
            midPos = auxPos / (float)count;
            //print(count);

            Vector3 longest = new Vector3();
            for (int i = 0; i < count; i++)
            {
                for (int j = i; j < count; j++)
                {
                    Vector3 union = players[i].position - players[j].position;
                    if (union.magnitude > longest.magnitude) longest = union;
                }
            }
            zoom = longest.magnitude;
            transform.position = midPos;
            //Vector3 union = end.position - start.position;
            //midPos = (start.position + end.position) / 2f;
            //zoom = union.magnitude;
            Transform aux = null;
            for (int i = 0; i < count; i++)
            {
                if (players[i].position.y < -50f)
                {
                    aux = players[i];
                    players.RemoveAt(i);
                    i--;
                    count--;
                }
            }
            if (aux)
                aux.gameObject.SetActive(false);
        } else
        {
            cs.stop = true;
        }
            
        
    }
    
}
