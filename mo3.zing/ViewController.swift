//
//  ViewController.swift
//  mo3.zing
//
//  Created by TTung on 2/8/17.
//  Copyright © 2017 TTung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var im_logo: UIImageView!
    @IBOutlet weak var lbl_textName: UILabel!
    @IBOutlet weak var lbl_textZing: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        im_logo.alpha = 0
        lbl_textName.alpha = 0
        lbl_textZing.alpha = 0
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 4, animations: {self.im_logo!.alpha = 1
        }, completion: { (finished) in
            UIView.animate(withDuration: 3, animations: {
                self.lbl_textZing!.center = CGPoint(x: self.im_logo!.center.x, y:100)
                self.lbl_textZing.alpha = 1
            }, completion: {(finished) in
                UIView.animate(withDuration: 3, animations: {
                    self.lbl_textName!.center = CGPoint(x: self.im_logo!.center.x, y:550)
                self.lbl_textName.alpha = 1
                })
            })
            
        })
        
            
    }
       

}

