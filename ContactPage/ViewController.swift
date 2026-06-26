//
//  ViewController.swift
//  ContactPage
//
//  Created by Botla Rajesh on 26/06/26.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var dateTimeView: UIView!
    
    @IBOutlet weak var phoneView: UIView!
    @IBOutlet weak var messageView: UIView!
    @IBOutlet weak var contactView: UIView!
    @IBOutlet weak var cromeView: UIView!
    @IBOutlet weak var cameraView: UIView!
    
    @IBOutlet weak var contactBtn: UIButton!
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: self.view.bounds)
        backgroundImage.image = UIImage(named: "Wallpaper")
        backgroundImage.contentMode =  .scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        dateTimeView.layer.cornerRadius = 20
        phoneView.layer.cornerRadius = 20
        messageView.layer.cornerRadius = 20
        contactView.layer.cornerRadius = 20
        cromeView.layer.cornerRadius = 20
        cameraView.layer.cornerRadius = 20
       
    }
    @IBAction func contactBtnTapped(_ sender: UIButton)
    {
       let vc = self.storyboard?.instantiateViewController(withIdentifier: "ContactVC") as! ContactVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    


}

