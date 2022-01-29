//
//  DetailViewController.swift
//  BountyList
//
//  Created by 곽민우 on 2022/01/29.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblBounty: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    var name: String? = ""
    var bounty: String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.ㄴ
    }
    
    @IBAction func showDetail(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    private func updateUI() {
        if let name = self.name, let bounty = self.bounty {
            let img = UIImage(named: "\(name).jpg")
            imgView.image = img
            lblBounty.text = bounty
            lblName.text = name
        } else {
            
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
