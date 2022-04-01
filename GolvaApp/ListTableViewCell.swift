//
//  ListTableViewCell.swift
//  GolvaApp
//
//  Created by serhat yaroglu on 28.03.2022.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    @IBOutlet weak var desingView: UIView!
    @IBOutlet weak var listImage: UIImageView!
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var otelNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        listImage.layer.cornerRadius = 15
        listImage.layer.borderWidth = 0.4
        listImage.layer.borderColor = UIColor.systemGray4.cgColor
        desingView.layer.shadowColor = UIColor.systemGray2.cgColor
        desingView.layer.shadowOffset = CGSize(width: 0, height: 1.2)
        desingView.layer.shadowRadius = 5.0
        desingView.layer.shadowOpacity = 0.9
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
