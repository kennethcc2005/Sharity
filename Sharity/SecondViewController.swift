//
//  SecondViewController.swift
//  Sharity
//
//  Created by Zoesh on 10/24/15.
//  Copyright © 2015 Zoesh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var brands: UILabel!
    
    @IBOutlet weak var models: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let logo = UIImage(named: "logo.png")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        // Do any additional setup after loading the view, typically from a nib.
        brands.backgroundColor = UIColorFromRGB(0x99EBDF)
//        models.layer.backgroundColor = UIColorFromRGB(0x58C0A0).CGColor  dark greeeeeen
        models.backgroundColor = UIColorFromRGB(0xC6C6C6)
        brands.textColor = UIColor.whiteColor()
        models.textColor = UIColorFromRGB(0x99EBDF)
        navigationController!.navigationBar.barTintColor = UIColorFromRGB(0x99EBDF)
        tabBarController!.tabBar.tintColor = UIColorFromRGB(0x99EBDF)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
}

