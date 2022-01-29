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
    
    let viewModel = DetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func showDetail(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    private func updateUI() {
        if let name = viewModel.bountyInfo?.name, let bounty = viewModel.bountyInfo?.bounty {
            let img = UIImage(named: "\(name).jpg")
            imgView.image = img
            lblBounty.text = String(bounty)
            lblName.text = name
        } else {
            
        }
    }
}
