//
//  ProductTableViewCell.swift
//  Test05RU
//
//  Created by Загид Гусейнов on 14.01.2021.
//

import UIKit
import Kingfisher

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var nameProductLabel: UILabel!
    @IBOutlet weak var productWeightLabel: UILabel!    
    @IBOutlet weak var costProductLabel: UILabel!    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(product: Product) {
        self.nameProductLabel.text = product.title
        self.productWeightLabel.text = product.count
        self.costProductLabel.text = String("\(product.price) руб")
        
        if let url = URL(string: product.image ?? "") {
            productImage.kf.setImage(with: url)
        }
    }
}
