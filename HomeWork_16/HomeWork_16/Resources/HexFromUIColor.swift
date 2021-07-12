//
//  HexFromUIColor.swift
//  HomeWork_16
//
//  Created by Владимир  on 7/12/21.
//  Copyright © 2021 Владимир . All rights reserved.
//

import Foundation
import UIKit

class ConvertColor {
    func hexFromUIColor(color: UIColor) -> String
    {
        let hexString = String(format: "%02X%02X%02X",
            Int((color.cgColor.components?[0])! * 255.0),
            Int((color.cgColor.components?[1])! * 255.0),
            Int(color.cgColor.components![2] * 255.0))
        return hexString
    }
}
