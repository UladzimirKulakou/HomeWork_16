//
//  ColorChangeVC.swift
//  HomeWork_16
//
//  Created by Владимир  on 7/7/21.
//  Copyright © 2021 Владимир . All rights reserved.
//

import UIKit

class ColorChangeVC: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var redTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

    
  
    @IBAction func redTFAction(_ sender: Any) {
        redSlider.value = Float(redTF.text ?? "1") ?? 1
    }
    
    
    
    @IBAction func sliderAction(_ sender: Any) {
        redTF.text = String(redSlider.value)
    }
    
}
