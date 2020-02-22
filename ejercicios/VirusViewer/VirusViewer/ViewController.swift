//
//  ViewController.swift
//  VirusViewer
//
//  Created by Marduk Perez de Lara on 21/02/20.
//  Copyright © 2020 Marduk Perez de Lara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var pictures = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        for item in items {
            if item.hasPrefix("virus"){
                pictures.append(item)
            }
        }
        print(pictures)
    }
}

