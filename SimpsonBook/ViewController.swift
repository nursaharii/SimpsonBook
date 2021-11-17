//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Nurşah on 17.11.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var simpsonArray = [Simpson]()
    var secilenIsim = ""
    var secilenIs = ""
    var secilenImg = UIImage()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonArray[indexPath.row].name
        return cell
    }

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
        let homer = Simpson(thisname : "Homer Simpson",
                            thisjob : "Nuclear Safety",
                            thisimg : UIImage(named: "homer")!)
        let marge = Simpson(thisname : "Marge Simpson",
                            thisjob : "Housewife",
                            thisimg : UIImage(named: "marge")!)
        let lisa = Simpson(thisname : "Lisa Simpson",
                            thisjob : "Student",
                            thisimg : UIImage(named: "lisa")!)
        let bart = Simpson(thisname : "Bart Simpson",
                            thisjob : "Student",
                            thisimg : UIImage(named: "bart")!)
        let maggie = Simpson(thisname : "Maggie Simpson",
                            thisjob : "Baby",
                            thisimg : UIImage(named: "maggie")!)
        simpsonArray.append(homer)
        simpsonArray.append(marge)
        simpsonArray.append(lisa)
        simpsonArray.append(bart)
        simpsonArray.append(maggie)
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenIsim = simpsonArray[indexPath.row].name
        secilenImg = simpsonArray[indexPath.row].img
        secilenIs = simpsonArray[indexPath.row].job
        performSegue(withIdentifier: "toSimpsonBook", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSimpsonBook" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.secilenIsim = secilenIsim
            destinationVC.secilenImg = secilenImg
            destinationVC.secilenIs = secilenIs
        }
    }

    
}

