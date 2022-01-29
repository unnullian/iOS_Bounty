//
//  BountyViewModel.swift
//  BountyList
//
//  Created by 곽민우 on 2022/01/30.
//


class BountyViewModel {
    let bountyInfoList: [BountyInfo] = [
        BountyInfo(name: "brook", bounty: 33_000_000),
        BountyInfo(name: "chopper", bounty: 50),
        BountyInfo(name: "franky", bounty: 44_000_000),
        BountyInfo(name: "luffy", bounty: 300_000_000),
        BountyInfo(name: "nami", bounty: 16_000_000),
        BountyInfo(name: "robin", bounty: 80_000_000),
        BountyInfo(name: "sanji", bounty: 77_000_000),
        BountyInfo(name: "zoro", bounty: 120_000_000)
    ]
    
    var numOfBountyInfoList: Int {
        return bountyInfoList.count
    }
    
    func bountyInfo(at index: Int) -> BountyInfo {
        return sortedList[index]
    }
    
    var sortedList: [BountyInfo] {
        let sortedList = bountyInfoList.sorted { prev, next in
            return prev.bounty > next.bounty
        }
        
        return sortedList
    }
}
