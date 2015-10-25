//
//  FirstViewController.swift
//  Sharity
//
//  Created by Zoesh on 10/24/15.
//  Copyright © 2015 Zoesh. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, HomeCellDelegate, UITableViewDataSource, UIActionSheetDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBAction func addPhoto(sender: AnyObject) {
        
        let ac = UIActionSheet(title: "Add photo", delegate: self, cancelButtonTitle: "Cancel", destructiveButtonTitle: nil, otherButtonTitles: "Choose from photo library", "Take a photo")
        ac.showInView(view)
    }
    let descriptionArray: NSArray = [1234, 645, 382, 52, 299]
    let imageArray: NSArray = []
    let urlArray: NSArray = ["bloomingdale.com","ebay.com", "bloomingdale.com","nordstrom.com"]
    var currentImage: UIImage!
    var imagesList : [UIImage] = []
    
    @IBOutlet weak var table: UITableView!
    let cellId: String = "cellId"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationController?.navigationBar.tintColor = UIColorFromRGB(0xFFFFFF)
        tabBarController!.tabBar.tintColor = UIColorFromRGB(0x99EBDF)
        navigationController!.navigationBar.barTintColor = UIColorFromRGB(0x99EBDF)
        table.dataSource = self
        table.registerNib(UINib.init(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: cellId)
        table.rowHeight = 414
//        imagesList[0] = UIImage(named: "FullSizeRender.jpg")!
        
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
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: HomeTableViewCell = tableView.dequeueReusableCellWithIdentifier(cellId)! as! HomeTableViewCell
        cell.delegate = self
        cell.label.text = descriptionArray[indexPath.row].stringValue
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        cell.productImage.image = UIImage(named: "FullSizeRender.jpg")
        return cell
    }
    
    func didTappedBuyButton() {
        //
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.amazon.com")!)
    }
    
    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        if (buttonIndex==1) {
            if (UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary)) {
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
                // need to guarantee that never nil
                self.presentViewController(imagePicker, animated:true, completion: nil)
            }
        }
        else if (buttonIndex == 2){
            if (UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)) {
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = UIImagePickerControllerSourceType.Camera
                self.presentViewController(imagePicker, animated:true, completion: nil)
            }
        }
        
    }
    
    
    
//    func importPicture() {
//        let picker = UIImagePickerController()
//        picker.allowsEditing = true
//        picker.delegate = self
//        presentViewController(picker, animated: true, completion: nil)
//    }
//    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: AnyObject]) {
//        var newImage: UIImage
//        if let possibleImage = info["UIImagePickerControllerOriginalImage"] as? UIImage {
//            newImage = possibleImage
//            imagesList.append(possibleImage)
//        } else {
//            return
//        }
    
//        self.navigationController!.pushViewController(self.storyboard?.instantiateViewC‌​ontrollerWithIdentifier("PhotoViewController") as! UIViewController, animated: true)
//        
//    }


}
