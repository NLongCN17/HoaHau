//
//  HoaHauAddViewController.swift
//  HoaHauVN
//
//  Created by Nguyễn Long on 13/02/2022.
//

import UIKit

class HoaHauAddViewController: UIViewController {

    
    @IBOutlet weak var txtHoTen: UITextField!
    
    @IBOutlet weak var dptNgaySinh: UIDatePicker!
    
    @IBOutlet weak var txtMoTa: UITextField!
    
    
    @IBOutlet weak var txtAnh: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCapNhatClick(_ sender: Any) {
        var ngaySinh: String = ""
        
        //Đưa từ ngày tháng về chuỗi
        let dateFormat = DateFormatter()
        dateFormat.dateStyle = DateFormatter.Style.short
        
        ngaySinh = dateFormat.string(from: dptNgaySinh.date)
        
        //Khai báo 1 đối tượng
        let hoaHau = HoaHau(hoTen: txtHoTen.text!, ngaySinh: ngaySinh, moTa: txtMoTa.text!, avatar: txtAnh.text!)
        
        //Thêm vào danh sách
        let kq = DataProvider.hoaHauBus.themMoi(objHoaHau: hoaHau)
        
        if kq
        {
            Common.thongBao(parent: self, noiDung: "Cập nhật thông tin hoa hậu thành công")
        }
    }
    
    
    @IBAction func btnTrolai(_ sender: Any) {
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
