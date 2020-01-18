//
//  ViewController.swift
//  ClothesRequested
//
//  Created by Yuri Yoshinami on 2020/01/11.
//  Copyright © 2020 Yuri Yoshinami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    lazy var searchRequestedClothes = UIBarButtonItem(title: "Push from right",
//    style: .plain, target: self, action: #selector(pushFromRightButtonItemTapped)
//
//    fileprivate func setupNavigation(){
//        navigationItem.title = "Navigation"
//
//        navigationItem.setLeftBarButton(pushFromRightBarButtonItem, animated: false)
//    }
//
//    @objec
    
    
    @IBAction func tapCustomButton(_ sender: Any) {
        let vc = RequestedClothesTableViewController()
        vc.title = "Choose Clothes you want to make！"
        let navi = UINavigationController(rootViewController: vc)
        present(navi, animated: true)
    }
    
//    @IBAction func tapSearchRequestedClothes(_ sender: Any) {
//
//        //FullscreenViewCOntrollerを作成
//        let vc = RequestedClothesViewController()
//
//        vc.modalPresentationStyle = .fullScreen
//
//        //DIsplay the full scree view controller
//        present(vc, animated: true)
//    }
//
//
//    @IBAction func ModalScreenButton(_ sender: Any) {
//
//        //FullscreenViewCOntrollerを作成
//        let vc = ModalViewController()
//
//        //DIsplay the full scree view controller
//        present(vc, animated: true)
//    }
//
//
//    //Action when you tap next
//    @IBAction func tapNextButton(_ sender: Any) {
//
//        //create NextViewController
//        let vc = NextViewController()
//
//        //put inside the UINavigationContoroller
//        let navi = UINavigationController(rootViewController: vc)
//
//        //DIsplay the full scree view controller
//        present(navi, animated: true)
//
//    }

}

