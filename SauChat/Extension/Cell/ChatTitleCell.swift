//
//  ChatTitleCell.swift
//  SauChat
//
//  Created by 宇野佑 on 2020/12/23.
//

import UIKit

class ChatTitleCell: UITableViewCell {
    
    @IBOutlet weak var userIcon: UIImageView!
    
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var chatTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setCell(userName:String,chatTitle:String){
        
//        self.userName.text = userName
//        self.chatTitle.text = chatTitle
    }
    
}
