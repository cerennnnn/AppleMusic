//
//  MusicTableViewCell.swift
//  AppleMusicDesign
//
//  Created by Ceren Güneş on 26.01.2023.
//

import UIKit

class MusicTableViewCell: UITableViewCell {

    @IBOutlet var info: UILabel!
    @IBOutlet var subtitle: UILabel!
    @IBOutlet var title: UILabel!
    @IBOutlet var musicImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
