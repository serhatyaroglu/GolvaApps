//
//  sheetDetailViewController.swift
//  GolvaApp
//
//  Created by serhat yaroglu on 21.03.2022.
//

import UIKit
import GoogleMaps

class sheetDetailVC: UIViewController,UISheetPresentationControllerDelegate {
    override var sheetPresentationController: UISheetPresentationController?{
        presentationController as? UISheetPresentationController
    }
    
    @IBOutlet weak var GMSMapView: GMSMapView!
    @IBOutlet weak var detailphotoCollectionView: UICollectionView!
    var detailslider = [fotoResponse]()

    override func viewDidLoad() {
        super.viewDidLoad()
        sheetPresentationController?.detents = [.medium(),.large()]
        sheetPresentationController?.preferredCornerRadius = 24
        detailphotoCollectionView.delegate = self
        detailphotoCollectionView.dataSource = self
        let f1 = fotoResponse(fotoid: 1,foto: "foto1", fotoName: "Atmaca Bungalov")
        let f2 = fotoResponse(fotoid: 2,foto: "foto2", fotoName: "Rima Bungalov")
        let f3 = fotoResponse(fotoid: 3,foto: "foto3", fotoName: "DogadaKal Bungalov")
        let f4 = fotoResponse(fotoid: 4,foto: "foto4", fotoName: "Kalayzen Bungalov")
        detailslider.append(f1)
        detailslider.append(f2)
        detailslider.append(f3)
        detailslider.append(f4)
        let camera = GMSCameraPosition.camera(withLatitude: 41.120633, longitude: 41.0515092, zoom: 13)
        GMSMapView.camera = camera
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 41.120633, longitude: 41.0515092)
        marker.title = "Atmaca"
        marker.snippet = "Bungalov"
        marker.map = GMSMapView
        // Do any additional setup after loading the view.
    }
   

}
extension sheetDetailVC:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return detailslider.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let slider = detailslider[indexPath.row]
        let cell = detailphotoCollectionView.dequeueReusableCell(withReuseIdentifier: "detailPhotoCell", for: indexPath) as! photoDetailCollectionViewCell
        cell.images.image =  UIImage(named: "\(slider.foto!)")
        cell.layer.borderColor = UIColor.systemGray4.cgColor
        cell.layer.borderWidth = 2
        cell.layer.cornerRadius = 15
        return cell
    }
    
    
}
