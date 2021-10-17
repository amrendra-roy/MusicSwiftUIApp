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

    @IBOutlet weak var swiftUIContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //let loginReq = LoginRequest.loginRequest()
        //title = "Storyboard UIViewController"
        swiftUIContainer.isHidden = true
    }

    // Embaded SwiftUI View
    @IBAction func moveToTabView(_ sender: UIButton) {
        
        //pushOnNavigation()
        addAsChild(by: sender)
        
    }
    // Push by code
    private func pushOnNavigation() {
        let vc = UIHostingController(rootView: HomeViewController())
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    //Push by Segue
    @IBSegueAction func moveToTabViewScreen(_ coder: NSCoder) -> UIViewController? {
        let swiftUITabView = HomeViewController()
        return UIHostingController(coder: coder, rootView: swiftUITabView)
    }
    
    private func addAsChild(by sender: UIButton) {
        let vc = UIHostingController(rootView: HomeViewController())
        self.navigationController?.pushViewController(vc, animated: true)
        
        swiftUIContainer.isHidden = false

        let homeTabView = UIHostingController(rootView: HomeViewController())
        addChild(homeTabView)
        homeTabView.view.frame = swiftUIContainer.bounds
        //swiftUIContainer.addConstrained(subview: homeTabView.view)
        swiftUIContainer.addSubview(homeTabView.view)
        homeTabView.didMove(toParent: self)
        
        sender.isHidden = true //hide button
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

}


extension UIView {
    func addConstrained(subview: UIView) {
        addSubview(subview)
        subview.translatesAutoresizingMaskIntoConstraints = false
        subview.topAnchor.constraint(equalTo: topAnchor).isActive = true
        subview.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        subview.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        subview.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}
