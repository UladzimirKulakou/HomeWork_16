//
//  textToSlider.swift
//  HomeWork_16
//
//  Created by Владимир  on 7/12/21.
//  Copyright © 2021 Владимир . All rights reserved.
//

import Foundation
import UIKit


class TextToSlider {
    func textToNumber(text: String?) -> Float
    {
        guard let valueRed = text else { return 1 }
        guard let number = Float(valueRed) else { return 1 }
        return number
    }
}

class UpdateDownViewColor {
    static func updateDownViewColor(red: Float, green: Float, blue: Float, opacity: Float) -> UIColor {
        return UIColor(red: CGFloat(red) / 255,
            green: CGFloat(green) / 255,
            blue: CGFloat(blue) / 255,
            alpha: CGFloat(opacity / 100))
    }
}

