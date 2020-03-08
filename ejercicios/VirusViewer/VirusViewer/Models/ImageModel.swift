//
//  ImageModel.swift
//  VirusViewer
//
//  Created by Marduk Perez de Lara on 08/03/20.
//  Copyright © 2020 Marduk Perez de Lara. All rights reserved.
//

import Foundation
struct ImageModel {
    var pictures = [String]()
    init(){
       let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        print(path)
        let items = try? fm.contentsOfDirectory(atPath: path)
        if let items = items{
            for item in items {
                print(item)
                if item.hasPrefix("virus"){
                    pictures.append(item)
                                    }
            }
        }
    }
}
