//
//  RootViewController.swift
//  MusicSwiftUIApp
//
//  Created by Amrendra on 16/10/21.
//

import UIKit
import SwiftUI
import MusicCoreFramework

import Combine

class RootViewController: UIViewController {

    @IBOutlet weak var swiftUIContainer: UIView!
    var cancellable: AnyCancellable?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //let loginReq = LoginRequest.loginRequest()
        //title = "Storyboard UIViewController"
        swiftUIContainer.isHidden = true
        
        
        
        MusicServiceManager.configuration(with: .Dev)
        
        loginUserDetail()
        
    }

    func loginUserDetail() {
        //var bag = Set<AnyCancellable>()
        //MusicServiceManager.fetchTest()

        
        cancellable = MusicServiceManager.loginTestAPI()
            .sink { resultCompletion in
                print("completion = \(resultCompletion)")
            switch resultCompletion {
            case .failure(let error):
                print("erorrrr = \(error)")
            case .finished:
                print("success = //amar")
                return
            }
            } receiveValue: { outValue in
                print("out put value = \(outValue.success)")
                print("out put value = \(outValue.error)")
                print("out put value = \(outValue.data)")
                
            }
            //.store(in: &bag)

                
        MusicServiceManager.loginUserDetail { result in //Result<UserLoginResponse, Error>
            switch result {
            case .success(let result):
                print("result detail = \(result)")
                print("result value = \(result.success)")
                print("result  value = \(result.error)")
                print("result t value = \(result.data?.userData)")
            case .failure(let error):
                print("user login failed -= \(error.localizedDescription)" )
            }
        }
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
