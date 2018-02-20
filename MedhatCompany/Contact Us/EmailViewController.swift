//
//  EmailViewController.swift
//  MedhatCompany
//
//  Created by medhat on 2/20/18.
//  Copyright © 2018 Medhatm3bd. All rights reserved.
//

import UIKit
import MessageUI

class EmailViewController: UIViewController, UITextViewDelegate, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var messageField: UITextView!
    
    @IBOutlet weak var button: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        button.layer.cornerRadius = 5
        
        self.navigationItem.title = "Email Us"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissKeyboard(_ sender: Any) {
        
        self.resignFirstResponder()
        
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        if text == "\n" {
            
            textView.resignFirstResponder()
            return false
            
        }
        
        return true
        
    }
    
    
    
    @IBAction func sendEmail(_ sender: Any) {
        
        let mc : MFMailComposeViewController = MFMailComposeViewController()
        
        mc.mailComposeDelegate = self
        
        let recipients = ["medhat.mebed@gmail.com"]
        
        mc.setToRecipients(recipients)
        mc.setSubject(nameField.text! + " - my app")
        mc.setMessageBody("""
                             Name: \(nameField.text!)
                             Email: \(emailField.text!)
                             Message: \(messageField.text!)
                             """, isHTML: false)
        
        self.present(mc, animated: true, completion: nil)
        
        
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    
}
