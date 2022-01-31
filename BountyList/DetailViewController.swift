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
    @IBOutlet weak var lblNameCenterX: NSLayoutConstraint!
    @IBOutlet weak var lblBountyCenterX: NSLayoutConstraint!
    
    let viewModel = DetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        prepareAnimation()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showAnimation()
    }
    
    private func prepareAnimation() {
        lblNameCenterX.constant = view.bounds.width
        lblBountyCenterX.constant = view.bounds.width
    }
    
    private func showAnimation() {
        lblNameCenterX.constant = 0
        lblBountyCenterX.constant = 0
        
//        UIView.animate(withDuration: 0.1) {
//            self.view.layoutIfNeeded()
//        }
        
        UIView.animate(withDuration: 0.3, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.2, options: .allowUserInteraction, animations: self.view.layoutIfNeeded, completion: nil)
        
        UIView.transition(with: imgView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
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
