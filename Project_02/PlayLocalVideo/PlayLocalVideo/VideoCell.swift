//
//  VideoCell.swift
//  PlayLocalVideo
//
//  Created by 陈栋楠 on 2016/11/15.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

import UIKit
struct video {
    let image : String
    let title : String
    let source : String
    
}

class VideoCell: UITableViewCell {

    @IBOutlet weak var screenshotImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
