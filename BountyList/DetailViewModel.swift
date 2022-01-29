//
//  DetailViewModel.swift
//  BountyList
//
//  Created by 곽민우 on 2022/01/30.
//



class DetailViewModel {
    var bountyInfo: BountyInfo?
    
    func update(model: BountyInfo?) {
        bountyInfo = model
    }
}
