//
//  ListVC.swift
//  GolvaApp
//
//  Created by serhat yaroglu on 28.03.2022.
//

import UIKit

class ListVC: UIViewController {
    var listHotel = [fotoResponse]()

    @IBOutlet weak var ListTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ListTableView.dataSource = self
        ListTableView.delegate = self
      
        ListTableView.separatorStyle = UITableViewCell.SeparatorStyle.none

        let f1 = fotoResponse(fotoid: 1,foto: "foto1", fotoName: "Atmaca Bungalov")
        let f2 = fotoResponse(fotoid: 2,foto: "foto2", fotoName: "Rima Bungalov")
        let f3 = fotoResponse(fotoid: 3,foto: "foto3", fotoName: "DogadaKal Bungalov")
        let f4 = fotoResponse(fotoid: 4,foto: "foto4", fotoName: "Kalayzen Bungalov")
        let f5 = fotoResponse(fotoid: 5,foto: "foto1", fotoName: "Atmaca Bungalov")
        let f6 = fotoResponse(fotoid: 6,foto: "foto2", fotoName: "Rima Bungalov")
        let f7 = fotoResponse(fotoid: 7,foto: "foto3", fotoName: "DogadaKal Bungalov")
        let f8 = fotoResponse(fotoid: 8,foto: "foto4", fotoName: "Kalayzen Bungalov")
        listHotel.append(f1)
        listHotel.append(f2)
        listHotel.append(f3)
        listHotel.append(f4)
        listHotel.append(f5)
        listHotel.append(f6)
        listHotel.append(f7)
        listHotel.append(f8)
    }
    @IBAction func filterButton(_ sender: Any) {
        
    }
    
}
extension ListVC : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listHotel.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let otelListCell = listHotel[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath) as! ListTableViewCell
        cell.listImage.image = UIImage(named: otelListCell.foto!)
        cell.otelNameLabel.text = otelListCell.fotoName
//        cell.layer.borderColor = UIColor.black.cgColor
//        cell.layer.borderWidth = 1
//        cell.layer.shadowColor = UIColor.systemGray2.cgColor
//        cell.layer.shadowOffset = CGSize(width: 0, height: 1.2)
//        cell.layer.shadowRadius = 5.0
//        cell.layer.shadowOpacity = 0.9
//        cell.layer.masksToBounds = false

        return cell
    }
    
    
}
