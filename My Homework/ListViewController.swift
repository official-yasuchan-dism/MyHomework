//
//  ListViewController.swift
//  My Homework
//
//  Created by Yuma on 2020/01/26.
//  Copyright © 2020 Yuma. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource {
    
    //StoryBordでのTableViewの宣言
    @IBOutlet var table: UITableView!
    
   //宿題を入れるための配列
    var homeworkNameArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        table.dataSource = self
        // Do any additional setup after loading the view.
        
        //homeworkNameArray =
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //セルの数　設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //ID付きセルの取得、セル付属のTextLabelに「テスト」と表示
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "テスト"
        return cell!
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
