//
//  ChatViewController.swift
//  SauChat
//
//  Created by 宇野佑 on 2020/12/17.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var chatTableView: UITableView!
    
    var parameter:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chatTableView.register(UINib(nibName: "ChatTitleCell", bundle: nil), forCellReuseIdentifier: "ChatTitleCell")
        chatTableView.backgroundColor = UIColor.background
        chatTableView.tableFooterView = UIView(frame: .zero)
//        chatTableView.estimatedRowHeight = 200

    }
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
    }

}

extension ChatViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return parameter.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatTitleCell", for: indexPath) as! ChatTitleCell
        cell.setCell(userName: "ジョニオ", chatTitle: parameter[0])
        return cell
        
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
    
    
}
