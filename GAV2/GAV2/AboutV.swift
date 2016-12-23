//
//  AboutV.swift
//  GAV2
//
//  Created by hiep on 12/23/16.
//  Copyright © 2016 phonghk. All rights reserved.
//

import UIKit

class AboutV: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        doinen()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func doinen()
    {
        var hinh:UIImage=UIImage(named: "start.jpg")!
        self.view.backgroundColor=UIColor(patternImage: hinh)
    }
}
