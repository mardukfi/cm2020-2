//
//  ViewController.swift
//  TrafficViewer
//
//  Created by Marduk Perez de Lara on 13/03/20.
//  Copyright © 2020 Marduk Perez de Lara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func unwindToGreen(unwindSegue: UIStoryboardSegue){
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }

    @IBAction func buttonSegue(_ sender: Any) {
        
        if(textField.text == "Hola"){
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
}

