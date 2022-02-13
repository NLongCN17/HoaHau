//
//  HoaHauChiTietViewController.swift
//  HoaHauVN
//
//  Created by Nguyễn Long on 13/02/2022.
//

import UIKit

class HoaHauChiTietViewController: UIViewController {

    var objHoaHau: HoaHau?

    @IBOutlet weak var txtHoTen: UITextField!
    
    @IBOutlet weak var txtMoTa: UITextView!
    
    
    @IBOutlet weak var imgAnhDaiDien: UIImageView!
    @IBAction func btnTroVe(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let objHH = objHoaHau
        {
            txtHoTen.text = objHH.hoten
            txtHoTen.allowsEditingTextAttributes = false
            txtMoTa.text = objHH.moTa
            imgAnhDaiDien.image = UIImage(named: objHH.avatar)
        }

        // Do any additional setup after loading the view.
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
