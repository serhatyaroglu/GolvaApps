//
//  DetailVC.swift
//  GolvaApp
//
//  Created by serhat yaroglu on 21.03.2022.
//

import UIKit

class DetailVC: UIViewController {
    var hotelDetail:fotoResponse?

    @IBOutlet weak var otelNameLabel: UILabel!
    @IBOutlet weak var backgroundPhoto: UIImageView!
    @IBOutlet weak var viewBlur: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let hoteldetails = hotelDetail{
            backgroundPhoto.image =  UIImage(named: "\(hoteldetails.foto!)")
            otelNameLabel.text = hoteldetails.fotoName
            
        }

    }
 
    @IBAction func upDetailButton(_ sender: Any) {
        let detailsvc = sheetDetailVC()
        if let sheet = detailsvc.sheetPresentationController{
            sheet.detents = [.medium(),.large()]
            sheet.prefersScrollingExpandsWhenScrolledToEdge = false
            sheet.prefersGrabberVisible = true
            sheet.preferredCornerRadius = 50
            sheet.largestUndimmedDetentIdentifier = .medium
        }
        self.present(detailsvc,animated: true,completion: nil)
    }
   

}
