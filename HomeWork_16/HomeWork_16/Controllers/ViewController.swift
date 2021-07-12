//
//  ViewController.swift
//  HomeWork_16
//
//  Created by Владимир  on 7/7/21.
//  Copyright © 2021 Владимир . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let toChange = "toChange"

    @IBOutlet var backGround: UIView!
    
    @IBOutlet weak var viewColor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == toChange {
            if let selectVC = segue.destination as? ColorChangeVC {
                selectVC.complition = { [weak self] color,opacity in
                    guard let self = self else { return }
                    self.viewColor.backgroundColor = color
                    self.viewColor.alpha = CGFloat(opacity)
                }
            }
        }
    }

}

