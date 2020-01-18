//
//  RequestedClothesTableViewController.swift
//  ClothesRequested
//
//  Created by Yuri Yoshinami on 2020/01/11.
//  Copyright © 2020 Yuri Yoshinami. All rights reserved.
//

import UIKit



class RequestedClothesTableViewController: UIViewController {
    
    let allRequestedClothes = ["Tシャツ_1", "フリルTシャツ_1", "スカート裏地なし_1"]
    let allClothesImageNames = ["Tshirt1", "Frilltshirt1", "skirt1"]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        //            tableView.register(UINib(nibName: ClothesCell.className, bundle: nil), forCellReuseIdentifier: ClothesCell.className)
        tableView.register(UINib(nibName: "ClothesCell", bundle: nil), forCellReuseIdentifier: "ClothesCell")
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


extension RequestedClothesTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allRequestedClothes.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClothesCell", for: indexPath) as! ClothesCell
        cell.clothesImage.image = UIImage(named: allClothesImageNames[indexPath.row])
        cell.clothesLevel.text = allRequestedClothes [indexPath.row]
        return cell
    }
    
}
