//
//  PortfolioCollectionViewController.swift
//  MedhatCompany
//
//  Created by medhat on 2/19/18.
//  Copyright © 2018 Medhatm3bd. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class PortfolioCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var imageList = ["Image1","Image6","Image7","Image2","Image8","Image9","Image3","Image10","Image11","Image12","Image4","Image13","Image14","Image15","Image16","Image17","Image18","Image5","Image19","Image20","Image21","Image22","Image23","Image24","Image25","Image26","Image27","Image28","Image29","Image30"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView?.backgroundView = UIImageView(image: UIImage(named: "Background"))

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PortfolioCollectionViewCell
    
        // Configure the cell
        
        cell.cellImage.image = UIImage(named: imageList[indexPath.row])
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenSize : CGRect = UIScreen.main.bounds
        
        var widthCell = 0
        var heightCell = 0
        
        if screenSize.width == 320 {
            
            widthCell = 130
            heightCell = 195
            
        }
        
        if screenSize.width == 375 {
            
            widthCell = 160
            heightCell = 240
            
        }
        
        if screenSize.width == 414 {
            
            widthCell = 180
            heightCell = 270
            
        }
        
        if screenSize.width == 768 {
            
            widthCell = 230
            heightCell = 345
            
        }
        
        if screenSize.width == 834 {
            
            widthCell = 250
            heightCell = 375
            
        }
        
        if screenSize.width == 1024 {
            
            widthCell = 310
            heightCell = 425
            
        }
        
        return CGSize(width: widthCell, height: heightCell)
        
    }
    

}
