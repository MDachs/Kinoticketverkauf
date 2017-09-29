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
    @IBOutlet private weak var movieImage: UIImage!
    
    var imageName: String? {
        didSet{
            if let imageName = imageName  {
                movieImage = UIImage(named: imageName)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
