//
//  ServicesViewController.swift
//  MedhatCompany
//
//  Created by medhat on 2/19/18.
//  Copyright © 2018 Medhatm3bd. All rights reserved.
//

import UIKit

class ServicesViewController: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailDescription: UITextView!
    
    var  sentData:String!

    override func viewDidLoad() {
        super.viewDidLoad()

        detailImage.layer.cornerRadius = 30
        // Do any additional setup after loading the view.
        
        
        self.navigationItem.title = sentData
        
        if self.navigationItem.title == "Demo App 1" {
            
            detailImage.image = UIImage(named: "Image1")
            detailDescription.text = " ChattingRoom App using Firebase"
            
        }
        
        if self.navigationItem.title == "Demo App 2" {
            
            detailImage.image = UIImage(named: "Image2")
            detailDescription.text = "Cloning design from Tidal App"
            
        }
        
        if self.navigationItem.title == "Demo App 3" {
            
            detailImage.image = UIImage(named: "Image3")
            detailDescription.text = "Weather App using OpenWeatherMap free api"
            
        }
        
        if self.navigationItem.title == "Demo App 4" {
            
            detailImage.image = UIImage(named: "Image4")
            detailDescription.text = "Cloning design from Nike App"
            
        }
        
        if self.navigationItem.title == "Demo App 5" {
            
            detailImage.image = UIImage(named: "Image5")
            detailDescription.text = "RollingDice App"
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
