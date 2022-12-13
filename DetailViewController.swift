//
//  DetailViewController.swift
//  BodyDetection
//
//  Created by Izaya on 2022/11/6.
//  Copyright © 2022 Apple. All rights reserved.
//


import UIKit
import RealityKit
import ARKit
import Combine
import SwiftUI

var image:UIImage = UIImage()
class DetailViewController: UIViewController {
    @IBOutlet weak var myimage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myimage.image = image
        
        
        // Do any additional setup after loading the view.
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
