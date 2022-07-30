//
//  CustomTableViewCell.swift
//  Yuriko-Uchida_COMP2125-Sec001_Lab04-Ex01
//
//  Created by user212402 on 2022-07-28.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    static let identifier = "CustomTableViewCell"
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var runTimeLabel: UILabel!

    
    /*
    @IBOutlet weak var btn: UIButton!

    @IBAction func didTapBtn(){
    }
    
    
    func configure(with title: String){
        btn.setTitle(title, for: .normal)
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "CustomTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
*/
    
}
