//
//  FirstViewController.swift
//  Example
//
//  Created by Dmitriy Utmanov on 01/11/2018.
//  Copyright © 2018 Dmitriy Utmanov. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController {

    @IBOutlet private weak var imageView: UIImageView!
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        title = R.string.localizable.title_id() // get warning in compile time
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // fix this error
        
        imageView.image = R.image.second()
        
        // Next Step:
        // try to rename view controllec class to wrong
        // e.g.: NewsViewController -> NewViewController
    }
}
