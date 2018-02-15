//
//  ContentVC.swift
//  iosBottomSheet
//
//  Created by RASHED on 2/15/18.
//  Copyright © 2018 ugoround. All rights reserved.
//

import UIKit
import ISHPullUp

class ContentVC: UIViewController, ISHPullUpContentDelegate {
   
    

    @IBOutlet var rootView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: ISHPullUpContentDelegate
    func pullUpViewController(_ vc: ISHPullUpViewController, update edgeInsets: UIEdgeInsets, forContentViewController _: UIViewController) {
        if #available(iOS 11.0, *) {
            additionalSafeAreaInsets = edgeInsets
            rootView.layoutMargins = .zero
        } else {
            // update edgeInsets
            rootView.layoutMargins = edgeInsets
        }
        
        // call layoutIfNeeded right away to participate in animations
        // this method may be called from within animation blocks
        rootView.layoutIfNeeded()
    }

}
