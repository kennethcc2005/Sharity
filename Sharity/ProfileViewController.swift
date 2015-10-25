//
//  ProfileViewController.swift
//  Sharity
//
//  Created by Zoesh on 10/24/15.
//  Copyright © 2015 Zoesh. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileOne: UIImageView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileFive: UIImageView!
    @IBOutlet weak var profileFour: UIImageView!
    @IBOutlet weak var profileThree: UIImageView!
    @IBOutlet weak var profileTwo: UIImageView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let logo = UIImage(named: "logo.png")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        self.view.backgroundColor = UIColorFromRGB(0x99EBDF)
        // Do any additional setup after loading the view.
        profileImage.layer.cornerRadius = self.profileImage.frame.size.width / 2;
        profileImage.clipsToBounds = true
        profileOne.layer.cornerRadius = self.profileOne.frame.size.width / 2;
        profileOne.clipsToBounds = true
        profileTwo.layer.cornerRadius = self.profileTwo.frame.size.width / 2;
        profileTwo.clipsToBounds = true
        profileThree.layer.cornerRadius = self.profileTwo.frame.size.width / 2;
        profileThree.clipsToBounds = true
        profileFour.layer.cornerRadius = self.profileTwo.frame.size.width / 2;
        profileFour.clipsToBounds = true
        profileFive.layer.cornerRadius = self.profileTwo.frame.size.width / 2;
        profileFive.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

}
