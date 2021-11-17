//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by Nurşah on 17.11.2021.
//

import UIKit

class detailsVC: UIViewController {
    var secilenIsim = ""
    var secilenIs = ""
    var secilenImg = UIImage()
    @IBOutlet weak var job: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        job.text = secilenIs
        name.text = secilenIsim
        img.image = secilenImg

        // Do any additional setup after loading the view.
    }
    


}
