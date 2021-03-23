//
//  EntryViewController.swift
//  Note
//
//  Created by Jahongir on 1/12/21.
//  Copyright © 2021 Jahongir. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    
    @IBOutlet weak var noteField: UITextView!
    
    public var completion: ((String, String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleField.becomeFirstResponder()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapSave))
        
        // Do any additional setup after loading the view.
    }

    @objc func didTapSave(){
        
        if let text = titleField.text, !text.isEmpty, !noteField.text.isEmpty{
            completion?(text, noteField.text)
        }
    }
}
