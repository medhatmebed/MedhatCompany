//
//  SocialTableViewController.swift
//  MedhatCompany
//
//  Created by medhat on 2/20/18.
//  Copyright © 2018 Medhatm3bd. All rights reserved.
//

import UIKit

class SocialTableViewController: UITableViewController {
    
    var imageList = ["SocialIcon1","SocialIcon2","SocialIcon3","SocialIcon4","SocialIcon5","SocialIcon6",]

    var titleList = ["GitHub","Twitter","Google+","LinkedIn","YouTube","Website",]


    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.backgroundView = UIImageView(image: UIImage(named: "Background"))
        
        self.navigationItem.title = "Social Links"
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return titleList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SocialTableViewCell

        // Configure the cell...

        cell.cellImage.image = UIImage(named: imageList[indexPath.row])
        cell.cellTitle.text = titleList[indexPath.row]
        
        return cell
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "showDetail") {
            
            let dvc = segue.destination as! SocialViewController
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                
                dvc.sentData = titleList[indexPath.row] as String
            }
            
            
        }
        
    }

}
