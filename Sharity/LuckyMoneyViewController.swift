//
//  LuckyMoneyViewController.swift
//  Sharity
//
//  Created by Zoesh on 10/24/15.
//  Copyright © 2015 Zoesh. All rights reserved.
//

import UIKit

class LuckyMoneyViewController: UIViewController,UINavigationControllerDelegate  {
   
    @IBAction func openTapped(sender: AnyObject) {
    }
    @IBOutlet weak var open: UIButton!
    @IBOutlet weak var profileOne: UIImageView!
    @IBOutlet weak var profileTwo: UIImageView!
    @IBOutlet weak var profileThree: UIImageView!
    @IBOutlet weak var profileFour: UIImageView!
    @IBOutlet weak var openone: UIButton!
    @IBOutlet weak var opentwo: UIButton!
    @IBOutlet weak var openthree: UIButton!
    @IBOutlet weak var openfour: UIButton!
   
    let cellId: String = "cellId"
    override func viewDidLoad() {
        super.viewDidLoad()
        let logo = UIImage(named: "logo.png")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        navigationController!.navigationBar.barTintColor = UIColorFromRGB(0x99EBDF)
        let backItem = UIBarButtonItem(title: "Back", style: .Bordered, target: nil, action: nil)
        navigationItem.backBarButtonItem = backItem
        

        profileOne.layer.cornerRadius = self.profileOne.frame.size.width / 2;
        profileOne.clipsToBounds = true
        profileTwo.layer.cornerRadius = self.profileTwo.frame.size.width / 2;
        profileTwo.clipsToBounds = true
        profileThree.layer.cornerRadius = self.profileTwo.frame.size.width / 2;
        profileThree.clipsToBounds = true
        profileFour.layer.cornerRadius = self.profileTwo.frame.size.width / 2;
        profileFour.clipsToBounds = true
        open.layer.cornerRadius = self.open.frame.size.width / 2;
        open.clipsToBounds = true
        openone.layer.cornerRadius = self.open.frame.size.width / 2;
        openone.clipsToBounds = true
        opentwo.layer.cornerRadius = self.open.frame.size.width / 2;
        opentwo.clipsToBounds = true
        openthree.layer.cornerRadius = self.open.frame.size.width / 2;
        openthree.clipsToBounds = true
        openfour.layer.cornerRadius = self.open.frame.size.width / 2;
        openfour.clipsToBounds = true
        
//        luckymoneyTable.dataSource = self
//        luckymoneyTable.registerNib(UINib.init(nibName: "LuckymoneyTableViewCell", bundle: nil), forCellReuseIdentifier: cellId)
//        luckymoneyTable.rowHeight = 50
        // Do any additional setup after loading the view.
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
//    
//    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 1
//    }
//    
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 5
//    }
//    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//       let cell: LuckymoneyTableViewCell = tableView.dequeueReusableCellWithIdentifier(cellId)! as! LuckymoneyTableViewCell
////        cell.delegate = self
////        cell.label.text = descriptionArray[indexPath.row].stringValue
////        cell.selectionStyle = UITableViewCellSelectionStyle.None
////        cell.productImage.image = UIImage(named: "FullSizeRender.jpg")
//     return cell
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}