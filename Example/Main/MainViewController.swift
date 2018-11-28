//
//  MainViewController.swift
//  Example
//
//  Created by Dmitriy Utmanov on 02/11/2018.
//  Copyright © 2018 Dmitriy Utmanov. All rights reserved.
//

import UIKit
import News
import Settings


class MainViewController: UITabBarController {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        
        // Code Gen by R.swift (New Way)
        
        guard let firstVC = R.storyboard.first.firstVC() else {
            fatalError()
        }
        
        guard let secondVC = R.storyboard.second.instantiateInitialViewController() else {
            fatalError()
        }
        
        
        // Vanilla (Old Way)
        
        let firstStoryboardName = "First" // Change to something else (e.g.: "FirST")
        let firstVCIdentifier = "FirstVC" // Change to something else (e.g.: "FirSTvc")
        let firstStoryboardInOldWay = UIStoryboard(name: firstStoryboardName, bundle: Bundle.main)
        let _firstVCInOldWay = firstStoryboardInOldWay.instantiateViewController(withIdentifier: firstVCIdentifier)
        guard
            let firstVCInOldWay = _firstVCInOldWay as? FirstViewController
        else {
            fatalError()
        }
        
        let secondStoryboardName = "Second" // // Change to something else (e.g.: "SecONd")
        let secondStoryboardInOldWay = UIStoryboard(name: secondStoryboardName, bundle: Bundle.main)
        guard
            let _secondVCInOldWay = secondStoryboardInOldWay.instantiateInitialViewController(),
            let secondVCInOldWay = _secondVCInOldWay as? SecondViewController
        else {
            fatalError()
        }

        
        // Settings
        
        guard let settingsVC = Settings.R.storyboard.settings.instantiateInitialViewController() else {
            fatalError()
        }
        
        
        // News
        
        guard let newsVC = News.R.storyboard.news.instantiateInitialViewController() else {
            fatalError()
        }
        
        
        // Fill Tabs
        
        viewControllers = [firstVC, secondVC, firstVCInOldWay, secondVCInOldWay, settingsVC, newsVC]
        customizableViewControllers = nil // Squash Edit button
    }
}
