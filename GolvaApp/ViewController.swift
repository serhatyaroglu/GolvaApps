//  ViewController.swift
//  GolvaApp
//  Created by serhat yaroglu on 16.03.2022.
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slilderCollectionView: UICollectionView!
    var sliderFoto = [fotoResponse]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slilderCollectionView.dataSource = self
        slilderCollectionView.delegate = self
        let f1 = fotoResponse(fotoid: 1,foto: "foto1", fotoName: "Atmaca Bungalov")
        let f2 = fotoResponse(fotoid: 2,foto: "foto2", fotoName: "Rima Bungalov")
        let f3 = fotoResponse(fotoid: 3,foto: "foto3", fotoName: "DogadaKal Bungalov")
        let f4 = fotoResponse(fotoid: 4,foto: "foto4", fotoName: "Kalayzen Bungalov")
        let f5 = fotoResponse(fotoid: 5,foto: "foto5", fotoName: "Eveli Bungalovb")
        sliderFoto.append(f1)
        sliderFoto.append(f2)
        sliderFoto.append(f3)
        sliderFoto.append(f4)
        sliderFoto.append(f5)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sliderfotoDetail"{
            let detailOtel = sender as? fotoResponse
            let toVC = segue.destination as! DetailVC
            toVC.hotelDetail = detailOtel
        }
    }
}
extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sliderFoto.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let slider = sliderFoto[indexPath.row]
        let cell = slilderCollectionView.dequeueReusableCell(withReuseIdentifier: "sliderCell", for: indexPath) as! SliderCollectionViewCell
        cell.sliderImage.image =  UIImage(named: "\(slider.foto!)")
        cell.layer.borderColor = UIColor.systemGray4.cgColor
        cell.layer.borderWidth = 2
        cell.layer.cornerRadius = 15
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let rover = sliderFoto[indexPath.row]
        performSegue(withIdentifier: "sliderfotoDetail", sender: rover)
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
    
}

