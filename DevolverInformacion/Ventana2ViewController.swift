//
//  Ventana2ViewController.swift
//  DevolverInformacion
//
//  Created by Alberto Cano Roca on 26/10/2023.
//

import UIKit

class Ventana2ViewController: UIViewController {

    @IBOutlet weak var txtTexto: UITextField!
    
    var delegate: ObtenerDatos?
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func btnVolver(_ sender: Any) {
        let dato = txtTexto.text!
        
        delegate?.obtener(dato: dato)
        
        self.dismiss(animated: true)
    }
}
