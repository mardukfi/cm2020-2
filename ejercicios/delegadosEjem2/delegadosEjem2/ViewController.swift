//
//  ViewController.swift
//  delegadosEjem1
//
//  Created by markmota on 5/14/18.
//  Copyright © 2018 markmota. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LogoDownloaderDelegate{
   
    

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var loadingLabel: UILabel!
    var logoDownloader: LogoDownloader?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isHidden = true
        loadingLabel.isHidden = false
       
        let imageUrl: String = "https://cdn.spacetelescope.org/archives/images/publicationjpg/heic1509a.jpg"
        logoDownloader = LogoDownloader(logoURL: imageUrl)
        
        
        logoDownloader?.delegate = self
        
        
        
        logoDownloader?.downloadLogo()
        
    }

    func didFinishDownload(_ sender: LogoDownloader) {
        imageView.image = logoDownloader?.image
        imageView.isHidden = false
        loadingLabel.isHidden = true
        activityIndicator.isHidden = true
    }


}

