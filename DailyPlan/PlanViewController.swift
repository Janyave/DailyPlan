//
//  PlanViewController.swift
//  DailyPlan
//
//  Created by NetEase-zyw on 17/2/22.
//  Copyright © 2017年 NetEase-zyw. All rights reserved.
//

import UIKit

class PlanViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension PlanViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50;
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            var cell = tableView.dequeueReusableCell(withIdentifier: "Cell1")
            if cell == nil {
                cell = UITableViewCell.init(style: .default, reuseIdentifier: "Cell1")
            }
            cell?.textLabel?.text = "cell 1"
            return cell!
        } else {
            var cell = tableView.dequeueReusableCell(withIdentifier: "Cell2")
            if cell == nil {
                cell = UITableViewCell.init(style: .default, reuseIdentifier: "Cell2")
            }
            cell?.textLabel?.text = "cell 2"
            return cell!
        }
    }
}

