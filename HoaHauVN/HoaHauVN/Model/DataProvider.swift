//
//  DataProvider.swift
//  HoaHauVN
//
//  Created by Nguyễn Long on 13/02/2022.
//

import UIKit

class DataProvider: NSObject {

    private static let _hoaHauBus:HoaHauBusiness = HoaHauBusiness()
    
    public static var hoaHauBus: HoaHauBusiness
    {
        get{
            
            return _hoaHauBus
        }
    }
}
