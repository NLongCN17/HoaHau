//
//  Common.swift
//  HoaHauVN
//
//  Created by Nguyễn Long on 13/02/2022.
//

import UIKit

class Common: NSObject {
    public static func thongBao(parent: UIViewController, noiDung: String) -> Void
    {
        //Tạo ra hộp thoại thông báo
        let alert = UIAlertController(title: "Thông báo", message: noiDung, preferredStyle: .alert)
        let acDongY = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(acDongY)
        parent.present(alert, animated: true, completion: nil);
    }
    
}
