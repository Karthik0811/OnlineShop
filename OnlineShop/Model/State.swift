//
//  State.swift
//  OnlineShop
//
//  Created by Karthik Ravikumar on 28/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//


final class State {
    private var name:String?
    private var states = ["UT","NV","TX","AL","CA"]

    //MARK: - Init Method
    init?(name:String?) {
        
        guard let stateName = name, !stateName.isEmpty, states.contains(stateName) else{
            return nil
        }
        
        self.name = stateName
    }
    
    //MARK: - State Name related method
    
    func getStateName() -> String {
        return name!
    }
}
