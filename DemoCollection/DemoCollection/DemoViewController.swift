//
//  DemoViewController.swift
//  DemoCollection
//
//  Created by 凌斌 on 2017/11/28.
//  Copyright © 2017年 lingbinDemo. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = self.datas
        view.addSubview(self.demoTableView)
    }
    
    //MARK: - lazy load
    
    lazy var demoTableView: UITableView = {
        let demoTableView = UITableView(frame: UIScreen.main.bounds, style: .plain)
        demoTableView.delegate = self
        demoTableView.dataSource = self
        demoTableView .register(UITableViewCell.self, forCellReuseIdentifier: "CellReuseIdentifier")
        return demoTableView
    }()
    
    lazy var datas: [String] = {
        let datas = ["1.摇杆",
                     "2.",
                     "3.",
                     "4.",
                     "5."]
        return datas
    }()
}

extension DemoViewController: UITableViewDelegate, UITableViewDataSource  {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellReuseIdentifier", for: indexPath)
        cell.textLabel?.text = self.datas[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.datas.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.row
        let title = self.datas[index]
        print(title)
        switch index {
        case 0:
            let VC = RockingBarController()
            VC.navigationItem.title = title
            navigationController?.pushViewController(VC, animated: true)
        default:
            print("default")
        }
    }
}

