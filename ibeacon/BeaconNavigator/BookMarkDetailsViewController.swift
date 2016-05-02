//
//  BookmartViewController.swift
//  BeaconNavigator
//
//  Created by mubashir on 13/03/2016.
//  Copyright © 2016 mubashir. All rights reserved.
//

import UIKit

class BookMarkDetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    var items: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBorderToButton()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        populateFloorData()
        // Do any additional setup after loading the view.
    }
    
    
    func populateFloorData()
    {
        items = ["A 401", "S 101", "Library", "Cafe", "A 434"]
    
        tableView.reloadData()
    }
    
    func addBorderToButton()
    {
        exitButton.layer.cornerRadius = 1
        exitButton.layer.borderWidth = 1
        exitButton.layer.borderColor = UIColor.blackColor().CGColor;
        
        startButton.layer.cornerRadius = 1
        startButton.layer.borderWidth = 1
        startButton.layer.borderColor = UIColor.blackColor().CGColor;
        
        /*  bookmarkButton.layer.cornerRadius = 5
         bookmarkButton.layer.borderWidth = 1
         bookmarkButton.layer.borderColor = UIColor.blackColor().CGColor;
         
         searchLocationButton.layer.cornerRadius = 5
         searchLocationButton.layer.borderWidth = 1
         searchLocationButton.layer.borderColor = UIColor.blackColor().CGColor;
         */
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func exitButtonAction(sender: AnyObject) {
        
        self .dismissViewControllerAnimated(true, completion:nil)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        cell.backgroundColor = tableView.backgroundColor
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.textLabel?.text = self.items[indexPath.row]
        cell.textLabel?.font = cell.textLabel?.font.fontWithSize(18)
        return cell
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
