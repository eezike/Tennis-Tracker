//
//  DetailViewController.swift
//  Tennis Tracker
//
//  Created by Emeka Ezike on 8/13/18.
//  Copyright © 2018 Emeka Ezike. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var scoreTF: UITextField!
    
    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item
        if let event = self.detailItem {
            if nameTF != nil {
                nameTF.text = event.name
                dateTF.text = event.date
                scoreTF.text = String(event.score)
            }
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        if let event = self.detailItem {
            if nameTF != nil {
                nameTF.text = event.name
                dateTF.text = event.date
                scoreTF.text = String(event.score)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    


}

