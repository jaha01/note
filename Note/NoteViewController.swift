//
//  NoteViewController.swift
//  Note
//
//  Created by Jahongir on 1/12/21.
//  Copyright © 2021 Jahongir. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var noteLabel: UITextView!
    
    public var noteTitle: String = ""
    public var note: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = noteTitle
        noteLabel.text = note

        // Do any additional setup after loading the view.
    }
    

}
