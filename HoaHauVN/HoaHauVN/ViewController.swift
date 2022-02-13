//
//  ViewController.swift
//  HoaHauVN
//
//  Created by Nguyễn Long on 13/02/2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    var lstHoaHau: [HoaHau] = []
    @IBOutlet weak var myTableHoaHau: UITableView!
    
    @IBOutlet weak var searchHoaHau: UISearchBar!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if lstHoaHau.count == 0
        {
            lstHoaHau = DataProvider.hoaHauBus.layDanhSach()
        }
        myTableHoaHau.dataSource = self
        myTableHoaHau.delegate = self
        
        searchHoaHau.delegate = self
        //searchHoaHau.showsCancelButton = true
        searchHoaHau.placeholder = "Nhập từ khoá"
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        if let tuKhoa = searchHoaHau.text
        {
            //let str = String(describing: tuKhoa.cString(using: String.Encoding.utf8))
            //print(str)
            timKiemThongTin(tuKhoa)
        }
       
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
         timKiemThongTin(searchText)
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchHoaHau.showsCancelButton = true
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        
        searchHoaHau.text = nil
        searchHoaHau.showsCancelButton = false
        searchHoaHau.endEditing(true)
    }
    
    func timKiemThongTin(_ searchText: String)
    {
        //Lọc thông tin chứa tên có nội dung cần tìm
        if searchText.count > 0 {
            //Lấy danh sách
            lstHoaHau = DataProvider.hoaHauBus.layDanhSach()
            
            lstHoaHau = lstHoaHau.filter{ $0.hoten.contains(searchText)
            }
        }
        else
        {
            lstHoaHau = DataProvider.hoaHauBus.layDanhSach()
        }
        print("Số thông tin tìm được: \(lstHoaHau.count)")
        myTableHoaHau.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        //Reload lại thông tin trên tableview
        print("Số thông tin là: \(lstHoaHau.count)")
        
        lstHoaHau = DataProvider.hoaHauBus.layDanhSach()
        
        myTableHoaHau.reloadData()
    }

    

    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return lstHoaHau.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let hoaHauCell = tableView.dequeueReusableCell(withIdentifier: "myHoaHauCell", for: indexPath) as! HoaHauTableViewCell
        
        //Lấy thông tin từng hoa hậu
        let objHoaHau = lstHoaHau[indexPath.row]
        
        hoaHauCell.lblHoten.text = objHoaHau.hoten
        hoaHauCell.lblNgaySinh.text = objHoaHau.ngaySinh
        hoaHauCell.imgAnhDaiDien.image = UIImage(named: objHoaHau.avatar)
        
        return hoaHauCell
    }
    
    //Khi nhấn thông tin trên cell thì sang giao diện chi
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Lấy đối tượng hoa hậu
        let objHH: HoaHau = lstHoaHau[indexPath.row]
        
        //Xử lý gọi sang giao diện chi tiết
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        //Khai báo view cần gọi đến
        let detailViewController = storyBoard.instantiateViewController(withIdentifier: "detail") as! HoaHauChiTietViewController
        
        //Truyền thông tin hoa hậu sang giao diện chi tiết
        detailViewController.objHoaHau = objHH
        
        //Di chuyển sang view detail
    navigationController?.pushViewController(detailViewController, animated: true)
        
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        //Xử lý xoá khi nhấn nút xoá
        if editingStyle == UITableViewCell.EditingStyle.delete
        {
            //Xoá dòng thông tin
            lstHoaHau.remove(at: indexPath.row)
            
            //Xoá trong ds
            DataProvider.hoaHauBus.xoa(idx: indexPath.row)
            
            //Reload lại danh sách
            //myTableHoaHau.reloadData()
            
            myTableHoaHau.deleteRows(at: [indexPath], with: .automatic)
        }
    }


}

