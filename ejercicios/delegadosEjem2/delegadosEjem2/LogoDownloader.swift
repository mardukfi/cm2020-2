//
//  LogoDownloader.swift
//  delegadosEjem1
//
//  Created by markmota on 5/14/18.
//  Copyright © 2018 markmota. All rights reserved.
//

import Foundation
import  UIKit
class LogoDownloader {
    var logoURL:String
    var image:UIImage?
    var delegate: LogoDownloaderDelegate?
    
    init (logoURL:String){
        self.logoURL = logoURL
    }
    func downloadLogo(){
       
        DispatchQueue.global(qos: DispatchQoS.QoSClass.background).async {
            guard
                let imageURL = URL(string: self.logoURL),
                let imageData =  NSData(contentsOf: imageURL),
                let image = UIImage(data: imageData as Data)else {return}
                self.image = image
                print("Image downloaded an set in the instance..")
                DispatchQueue.main.async {
                    self.didDownloadImage()
                }
        }
    }
    func didDownloadImage(){
        print("Now how change de properties of the ViewController?")
        
        delegate?.didFinishDownload(self)
    }
    
}
