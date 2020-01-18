//
//  RequestedClothesTableViewController2.swift
//  ClothesRequested
//
//  Created by Yuri Yoshinami on 2020/01/11.
//  Copyright © 2020 Yuri Yoshinami. All rights reserved.
//
//
//import UIKit
//
//class RequestedClothesTableViewController2: UIViewController {
//    let allRequestedClothes = ["Tシャツ_1", "フリルTシャツ_1", "スカート裏地なし_1", "ジャケット裏地なし_1"]
//    let allClothesImageNames = ["Tshirt_1", "Frilltshirt_1", "skirt_1", "jacket_1"]
//
//    @IBOutlet weak var tableView: UITableView!
//
//    // Do any additional setup after loading the view.
//    override func viewDidLoad() {
//                   super.viewDidLoad()
//                   tableView.delegate = self
//                   tableView.dataSource = self
//                   tableView.register(UINib(nibName: ClothesCell.className, bundle: nil), forCellReuseIdentifier: ClothesCell.className)
//               }
//    }
//
//       extension RequestedClothesTableViewController: UITableViewDelegate, UITableViewDataSource {
//            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//                return allRequestedClothes.count
//            }
//
//
//            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//                let cell = tableView.dequeueReusableCell(withIdentifier: ClothesCell.className, for: indexPath) as! ClothesCell
//                cell.clothesImage.image = UIImage(named: allClothesImageNames[indexPath.row])
//                cell.clothesLabel.text = allRequestedClothes [indexPath.row]
//                return cell
//            }
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
