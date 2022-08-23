//
//  ViewController.swift
//  FranciscoeAntonio
//
//  Created by ICMMAC05-7528 on 23/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var resultado: UILabel!
   
    var numero = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultado.isHidden = true
        // Do any additional setup after loading the view.
    }

    @IBAction func check(_ sender: Any) {
        numero = Int(textfield.text!) ?? 0
        tropinha()
        resultado.isHidden = false
        view.endEditing(true)
    }
    
    
    func tropinha(){
        if (numero % 10 == 0) {
        resultado.text = "tropinha"
    } else {
        resultado.text = "Nao eh tropinha"
      }
    }
    
}

