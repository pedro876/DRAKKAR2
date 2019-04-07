using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class checkPlayersInParty : MonoBehaviour
{
    [SerializeField]GetMidPoint gmp;


    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "player")
        {
            print("sale");
            gmp.players.Remove(other.transform);
        }
    }
}
