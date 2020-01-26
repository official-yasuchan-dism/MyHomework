//
//  MemoViewController.swift
//  My Homework
//
//  Created by Yuma on 2020/01/26.
//  Copyright © 2020 Yuma. All rights reserved.
//

import UIKit

class MemoViewController: UIViewController {
    
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var contentTextView: UITextView!
    
    var saveData: UserDefaults = UserDefaults.standard

    @IBOutlet weak var textField: UITextField!
    
    var datePicker: UIDatePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        datePicker.timeZone = NSTimeZone.local
        datePicker.locale = Locale.current
        textField.inputView = datePicker

        titleTextField.text = saveData.object(forKey: "title") as? String
        contentTextView.text = saveData.object(forKey: "content") as? String
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveMemo() {
        saveData.set(titleTextField.text, forKey: "title")
        saveData.set(contentTextView.text, forKey: "content")
    }

}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
