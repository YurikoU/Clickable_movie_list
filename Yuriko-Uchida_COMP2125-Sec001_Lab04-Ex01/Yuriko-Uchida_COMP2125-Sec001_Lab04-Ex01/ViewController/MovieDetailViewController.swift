//
//  MovieDetailViewController.swift
//  Yuriko-Uchida_COMP2125-Sec001_Lab04-Ex01
//
//  Created by user212402 on 2022-07-28.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    var movieTitle: String = ""
    var year: String = ""
    var director: String = ""
    var runTime: String = ""
    var img: UIImage?
    
    //Label obj
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var runTimeLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //Display the selected movie info
        posterImageView.image = img
        titleLabel.text = movieTitle
        yearLabel.text = year
        directorLabel.text = director
        runTimeLabel.text = runTime
    }
    

}
