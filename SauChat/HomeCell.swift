//
//  HomeCell.swift
//  SauChat
//
//  Created by 宇野佑 on 2020/12/18.
//

import UIKit

class HomeCell: UITableViewCell {
    
    
    @IBOutlet weak var userIcon: UIImageView!
    
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var title: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setCell(userName:String,title:String){
        
        self.userName.text = userName
        self.title.text = title
    }
}
