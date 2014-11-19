//
//  ViewController.swift
//  RestLady
//
//  Created by Li JinMa on 14/11/13.
//  Copyright (c) 2014年 Li JinMa. All rights reserved.
//

import Cocoa
import Alamofire

class ViewController: NSViewController {

    @IBOutlet weak var urlTextField: NSTextField!
    @IBOutlet var resTextView: NSTextView!
    @IBOutlet weak var goButton: NSButton!
    
    @IBAction func goClicked(sender: AnyObject) {
        var url: String = urlTextField.stringValue
        Alamofire.request(.GET, url).responseString{
            (req, res, body, error) in
            self.resTextView.string = body as String!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }



}

