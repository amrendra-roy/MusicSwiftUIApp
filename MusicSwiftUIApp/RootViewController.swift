//
//  RootViewController.swift
//  MusicSwiftUIApp
//
//  Created by Amrendra on 16/10/21.
//

import UIKit
import SwiftUI
import MusicCoreFramework

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let loginReq = LoginRequest.loginRequest()
    }

    // Navigate to SwiftUI from UIViewController
    @IBAction func moreToSwiftUIMusicApp(_ sender: UIButton) {
        let vc = UIHostingController(rootView: HomeViewController())
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
