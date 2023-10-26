//
//  ViewController.swift
//  DevolverInformacion
//
//  Created by Alberto Cano Roca on 26/10/2023.
//

import UIKit

class ViewController: UIViewController, ObtenerDatos {

    @IBOutlet weak var lbResultado: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func obtener(dato: String) {
        lbResultado.text = dato
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PASAR"{
            let destino = segue.destination as! Ventana2ViewController
            destino.delegate = self
        }
    }
}

