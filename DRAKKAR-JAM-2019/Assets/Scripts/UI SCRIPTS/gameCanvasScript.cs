using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class gameCanvasScript : MonoBehaviour
{

    

    public void goToMenu()
    {
        SceneManager.LoadScene("MAIN_MENU");
    }

    public void rematch()
    {
        SceneManager.LoadScene("GAME");
    }
}
