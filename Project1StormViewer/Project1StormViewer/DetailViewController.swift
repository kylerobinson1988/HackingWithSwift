//
//  DetailViewController.swift
//  Project1StormViewer
//
//  Created by Kyle Brooks Robinson on 11/22/15.
//  Copyright © 2015 Kyle Brooks Robinson. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {


    @IBOutlet weak var detailImageView: UIImageView!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let imageView = self.detailImageView {
                imageView.image = UIImage(named: detail as! String)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }
    
    override func viewWillAppear(animated: Bool) {
        
        navigationController?.hidesBarsOnTap = true
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        
        navigationController?.hidesBarsOnTap = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

