//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Allan Reid on 10/15/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    var israncid = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }

    @objc func changePic() {
        
        if israncid == true {
            imageView.image = UIImage(named: "lintGuitar")
            myLabel.text = "Lint"
            israncid = false
        } else {
            imageView.image = UIImage(named: "rancid")
            myLabel.text = "Rancid"
            israncid = true
        }
        
    }

}

