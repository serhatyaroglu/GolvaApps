//
//  ListFilterVC.swift
//  GolvaApp
//
//  Created by serhat yaroglu on 30.03.2022.
//

import UIKit

class ListFilterVC: UIViewController,UISheetPresentationControllerDelegate {
    override var sheetPresentationController: UISheetPresentationController?{
        presentationController as? UISheetPresentationController
    }
//    override var sheetPresentationController: UISheetPresentationController?{
//        presentationController as? UISheetPresentationController
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        sheetPresentationController?.detents = [.medium()]
        sheetPresentationController?.preferredCornerRadius = 24
        // Do any additional setup after loading the view.
    }
    

}
