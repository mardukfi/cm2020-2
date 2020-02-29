//
//  ViewController.swift
//  VirusViewer
//
//  Created by Marduk Perez de Lara on 21/02/20.
//  Copyright © 2020 Marduk Perez de Lara. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
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
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //1: Tratar de encontrar y relacionar la vista Detail
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController{
            //2: Exito ya tengo referencia al view controller por medio de vc, asignar selecteImage al string que esta tocando el usuario
            vc.selectedImage = pictures[indexPath.row]
            // 3: Cambiar la vista
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

