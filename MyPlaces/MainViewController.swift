//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Репина Надежда on 06.07.2020.
//  Copyright © 2020 Репина Надежда. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
	
	let restourantNames = [
	"Bonsai", "Индокитай", "Бочка", "Балкан Гриль", "Шок",
	"Вкусные истории", "Kitchen", "Love&Life", "Burger Heroes", "Morris Pub",
	"Классик", "Дастархан", "Speak Easy", "X.O", "Sherlock Holmes"
	]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return restourantNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
		cell.nameLabel.text = restourantNames[indexPath.row]
		cell.imageOfPlace.image = UIImage(named: restourantNames[indexPath.row])
		cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.height / 2
		cell.imageOfPlace.clipsToBounds = true
		
        return cell
    }
	
	// MARK: - TableViewDelegate
	
	override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 85
	}
	
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
