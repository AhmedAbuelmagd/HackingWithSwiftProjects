//
//  DetailsVC.swift
//  HackingWithSwiftProjects
//
//  Created by Ahmed Abuelmagd on 5/28/20.
//  Copyright © 2020 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    var selectedImage:String?
    override func viewDidLoad() {
        //title = selectedImage
        navigationItem.largeTitleDisplayMode = .never
        super.viewDidLoad()
        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad)
        }

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.hidesBarsOnTap = false
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
