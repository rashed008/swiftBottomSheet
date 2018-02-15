//
//  ViewController.swift
//  iosBottomSheet
//
//  Created by RASHED on 2/15/18.
//  Copyright © 2018 ugoround. All rights reserved.
//

import UIKit
import ISHPullUp

class ViewController: ISHPullUpViewController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        commonInit()
    }
    
    private func commonInit() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let contentVC = storyBoard.instantiateViewController(withIdentifier: "ContentVC") as! ContentVC
        let bottomVC = storyBoard.instantiateViewController(withIdentifier: "BottomVC") as! BottomVC
        contentViewController = contentVC
        bottomViewController = bottomVC
        bottomVC.pullUpController = self
        contentDelegate = contentVC
        sizingDelegate = bottomVC
        stateDelegate = bottomVC
    }
}


