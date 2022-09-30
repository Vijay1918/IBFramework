//
//  DataTblCell.swift
//  FrameworkApp
//
//  Created by Vijay Waghmare on 27/09/22.
//

import UIKit

public class DataTblCell: UITableViewCell {

    @IBOutlet weak var textLbl: UILabel!
    @IBOutlet weak var backView: UIView!
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        
        backView.layer.cornerRadius = 5
        backView.clipsToBounds = true
        backView.layer.masksToBounds = false
        backView.layer.shadowRadius = 1.5
        backView.layer.shadowOpacity = 0.6
        backView.layer.shadowOffset = CGSize(width: 1, height: 1)
        backView.layer.shadowColor = UIColor.darkGray.cgColor
        
        self.selectionStyle = .none
    }

    public override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
