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
        
        chatTableView.backgroundColor = UIColor.background
        chatTableView.tableFooterView = UIView(frame: .zero)

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
        let cell = UITableViewCell(style: .default, reuseIdentifier: "chatCell")
        cell.textLabel?.text = parameter[0]
        cell.textLabel?.textAlignment = .center
        
        return cell
    }
    
    
}
