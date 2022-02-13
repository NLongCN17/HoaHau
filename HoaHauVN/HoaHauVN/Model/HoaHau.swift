//
//  HoaHau.swift
//  HoaHauVN
//
//  Created by Nguyễn Long on 13/02/2022.
//

import UIKit

class HoaHau: NSObject {

    var id: Int = 0
    var hoten: String = ""
    var ngaySinh: String = ""
    var moTa: String = ""
    var soDo: String = ""
    var avatar: String = ""
    
    init(hoTen: String, ngaySinh: String, moTa: String, avatar: String)
    {
        self.hoten = hoTen
        self.ngaySinh = ngaySinh
        self.moTa = moTa
        self.avatar = avatar
    }
}
