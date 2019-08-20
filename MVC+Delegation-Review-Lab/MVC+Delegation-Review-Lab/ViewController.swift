//
//  ViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Benjamin Stone on 8/19/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.count
    }
    
   
    
    @IBOutlet var movieTableView: UITableView!
    var movie = Movie.allMovies

    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.dataSource = self
    }
   

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        
        cell.textLabel?.text = movie[indexPath.row].name
        cell.detailTextLabel?.text = movie[indexPath.row].genre
        cell.textLabel?.font = UIFont(name: "Helvetica", size: 20)
        return cell
    }
    
}

