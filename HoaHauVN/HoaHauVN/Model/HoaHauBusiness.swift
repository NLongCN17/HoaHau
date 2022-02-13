//
//  HoaHauBusiness.swift
//  HoaHauVN
//
//  Created by Nguyễn Long on 13/02/2022.
//

import UIKit

class HoaHauBusiness: NSObject {

    private var lstHoaHau: [HoaHau] = []
    
    public func layDanhSach() ->[HoaHau]
    {
        if lstHoaHau.count == 0
        {
            taoDuLieuBanDau()
        }
        return lstHoaHau
    }
    
    func taoDuLieuBanDau() -> Void
    {
        let objHuyen = HoaHau(hoTen: "Nguyễn Thị Huyền", ngaySinh: "04/07/1985", moTa: "Cô giành vương miện trong cuộc thi hoa hậu quốc gia được tổ chức vào cuối tháng 10 năm 2004 tại Tuần Châu, Hạ Long, Quảng Ninh. Cuối năm 2004, cô đại diện cho Việt Nam tham dự cuộc thi Hoa hậu Thế giới (Miss World) tại Trung Quốc", avatar: "nguyen_thi_huyen")
        objHuyen.id = 1
        
        lstHoaHau.append(objHuyen)
        
        let objThuy = HoaHau(hoTen: "Mai Phương Thuý", ngaySinh: "06/08/1988", moTa: "Cô giành vương miện trong cuộc thi Hoa hậu quốc gia được tổ chức vào tháng 8 năm 2006 tại Nha Trang, Khánh Hòa", avatar: "mai_phuong_thuy")
        objThuy.id = 2
        
        lstHoaHau.append(objThuy)
        
        let objHan = HoaHau(hoTen: "Đặng Thị Ngọc Hân", ngaySinh: "11/03/1989", moTa: "Cô giành vương miện trong cuộc thi Hoa hậu Việt Nam 2010[2][3] diễn ra tại Tuần Châu, Quảng Ninh vào ngày 14 tháng 8 năm 2010. Cô đã từng giành nhiều giải thưởng: Gương mặt ăn ảnh cuộc thi Người mẫu Việt Nam 2006, Miss Icon Hoa học trò 2005, giải Nhất chương trình sản phẩm Yomost, Hoa khôi Trung hoc phổ thông Trần Nhân Tông", avatar: "ngoc_han")
        objHan.id = 3
        
        lstHoaHau.append(objHan)
        
        let objThao = HoaHau(hoTen: "Đặng Thu Thảo", ngaySinh: "15/02/1991", moTa: "Thời điểm đăng quang hoa hậu, chỉ số hình thể ba vòng của cô là 83-60-90, chiều cao 1,73 m, nặng 49 kg, đang là sinh viên Trường Đại học Tây Đô", avatar: "thu_thao")
        objThao.id = 4
        
        lstHoaHau.append(objThao)
        
        let objHuong = HoaHau(hoTen: "Phạm Thị Hương", ngaySinh: "04/09/1991", moTa: "Hoa hậu Hoàn vũ Việt Nam năm 2015, đăng quang trong cuộc thi cùng tên tại Nha Trang, Khánh Hòa, vào tối 3 tháng 10 năm 2015 khi cô 24 tuổi", avatar: "pham_huong")
        objHuong.id = 5
        
        lstHoaHau.append(objHuong)
        
        let objLinh = HoaHau(hoTen: "Đỗ Mỹ Linh", ngaySinh: "01/01/1996", moTa: "Ngày 28 tháng 08 năm 2016, tại vòng chung kết Hoa hậu Việt Nam được tổ chức ở thành phố Hồ Chí Minh, Đỗ Mỹ Linh đã đăng quang vương miện Hoa hậu Việt Nam năm 2016", avatar: "my_linh")
        objLinh.id = 6
        
        lstHoaHau.append(objLinh)
    }
    
    public func themMoi(objHoaHau: HoaHau?)-> Bool
    {
        if objHoaHau != nil
        {
            lstHoaHau.append(objHoaHau!)
            return true
        }
        
        return false
    }
    
    public func xoa(idx: Int) -> Void
    {
        lstHoaHau.remove(at: idx)
    }
}
