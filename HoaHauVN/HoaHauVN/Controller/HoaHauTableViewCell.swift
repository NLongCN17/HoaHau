//
//  HoaHauTableViewCell.swift
//  HoaHauVN
//
//  Created by Nguyễn Long on 13/02/2022.
//

import UIKit

class HoaHauTableViewCell: UITableViewCell {

    @IBOutlet weak var imgAnhDaiDien: UIImageView!
    
    @IBOutlet weak var lblHoten: UILabel!
    
    @IBOutlet weak var lblNgaySinh: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
