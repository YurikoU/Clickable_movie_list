//
//  ViewController.swift
//  Yuriko-Uchida_COMP2125-Sec001_Lab04-Ex01
//
//  Created by user212402 on 2022-07-28.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Define the Movie struct
    struct Movie {
        let title: String
        let year: String
        let director: String
        let runTime: String
        let imgName: String
    }

    //Create an array of Movie structs
    let movieArray: [Movie] = [
        Movie(title: "Star Wars 1", year: "1999", director: "George Lucas", runTime: "121 minutes", imgName: "1"),
        Movie(title: "The Incredibles", year: "2019", director: "Brad Bird", runTime: "115 minutes", imgName: "2"),
        Movie(title: "Monsters Inc", year: "2019", director: "David Silverman", runTime: "92 minutes", imgName: "3"),
        Movie(title: "Toy Story", year: "1999", director: "John Lasseter", runTime: "80 minutes", imgName: "4")
    ]
    
    
    @IBOutlet weak var movieTableView: UITableView!
    
    //Number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieArray.count
    }
    
    //Set the img and title
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = movieArray[indexPath.row]
        let cell = movieTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.iconImageView.image = UIImage(named: movie.imgName)
        cell.titleLabel.text = movie.title
        cell.yearLabel.text = movie.year
        cell.directorLabel.text = movie.director
        cell.runTimeLabel.text = movie.runTime
        return cell
    }
    
    // when a row is tapped, perform segue
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC:MovieDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "MovieDetailViewController") as! MovieDetailViewController
        detailVC.movieTitle = movieArray[indexPath.row].title
        detailVC.year = movieArray[indexPath.row].year
        detailVC.director = movieArray[indexPath.row].director
        detailVC.runTime = movieArray[indexPath.row].runTime
        detailVC.img = UIImage(named: movieArray[indexPath.row].imgName + ".jpg")
        
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.delegate = self
        movieTableView.dataSource = self
    }

}

