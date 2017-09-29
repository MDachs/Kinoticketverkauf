//
//  MasterCell.swift
//  Kinoticketverkauf
//
//  Created by Meik Dachs on 29.09.17.
//  Copyright © 2017 MDachs. All rights reserved.
//

import UIKit

class MasterCell: UITableViewCell {

    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    
    
    var imageName: String = "" {
        didSet{
                movieImage.image = UIImage(named: imageName)
        }
    }
        
    override func awakeFromNib() {
        super.awakeFromNib()
        movieImage.image = #imageLiteral(resourceName: "default")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
