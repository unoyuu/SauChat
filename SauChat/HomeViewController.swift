//
//  HomeViewController.swift
//  SauChat
//
//  Created by 宇野佑 on 2020/12/14.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var messages:[String] = ["テスト"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = UIColor.background
        
        let footerView = UIView(frame: .zero)
        footerView.backgroundColor = .gray
        tableView.tableFooterView = footerView

        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        if messages.count == 0{
            noChatAlert()
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pushChatViewController"{
            let chatViewController = segue.destination as! ChatViewController
            chatViewController.parameter = sender as! [String]
        }
    }
    
    
    func noChatAlert(){
        
        let alertController = UIAlertController(title: "まだチャットはありません", message: "チャットを作成しましょう", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        alertController.alertBackGroundColor()
        
        present(alertController, animated: true, completion: nil)
    }

}

extension HomeViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "HomeTableViewCell")
        cell.textLabel?.text = "テスト"
        cell.textLabel?.textAlignment = .center
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "pushChatViewController", sender: messages)
    }
    
    
}
