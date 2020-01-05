//
//  ViewController.swift
//  Tconvert
//
//  Created by Вадим  Преснов on 04/01/2020.
//  Copyright © 2020 rwerg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBOutlet weak var cout: UILabel!
    @IBOutlet weak var fout: UILabel!
    @IBOutlet weak var slide: UISlider!{
        didSet{
            slide.maximumValue = 100
            slide.minimumValue = 0
            slide.value = 0
        }
    }
    
    @IBAction func slider(_ sender: UISlider) {
        let Ctemp = Int(round(slide.value))
        cout.text = String(Ctemp)
        let Ftemp = (Int(Double(Ctemp) * 1.8) ) + 32
        fout.text = String(Ftemp)
    }
    
}

