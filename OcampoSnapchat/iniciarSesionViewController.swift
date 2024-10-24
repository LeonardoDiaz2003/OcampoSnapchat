//
//  ViewController.swift
//  OcampoSnapchat
//
//  Created by Leonardo Paolo Diaz Ocampo on 16/10/24.
//

import UIKit
import FirebaseAuth

class iniciarSesionViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func IniciarSesionTapped (sender: Any) {
        Auth.auth().signIn (withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in print("Intentando Iniciar Sesion")
            if error != nil{
                print("Se presento el siguient error: \(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
        }
    }
}

