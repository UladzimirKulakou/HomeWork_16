//
//  ColorChangeVC.swift
//  HomeWork_16
//
//  Created by Владимир  on 7/7/21.
//  Copyright © 2021 Владимир . All rights reserved.
//

import UIKit

class ColorChangeVC: UIViewController {

    var complition: ((UIColor, Float) -> ())?

    @IBOutlet weak var redSlider: UISlider!

    @IBOutlet weak var redTF: UITextField!
    @IBOutlet weak var greenTF: UITextField!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueTF: UITextField!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var hexTF: UITextField!
    @IBOutlet weak var opacityTF: UITextField!
    @IBOutlet weak var opacitySlider: UISlider!
    @IBOutlet weak var downView: UIView!

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
        let number = TextToSlider().textToNumber(text: redTF.text)
        (number >= 0 && number <= 255) ? (redSlider.value = number) : (redSlider.value = 255)
        (number >= 0 && number <= 255) ? (redSlider.value = number) : (redTF.text = "255")
        downView.backgroundColor = UpdateDownViewColor.updateDownViewColor(red: redSlider.value,
            green: greenSlider.value,
            blue: blueSlider.value,
            opacity: opacitySlider.value)
        hexTF.text = ConvertColor().hexFromUIColor(color: downView.backgroundColor!)

    }

    @IBAction func greenTFAction(_ sender: Any) {
        let number = TextToSlider().textToNumber(text: greenTF.text)
        (number >= 0 && number <= 255) ? (greenSlider.value = number) : (greenSlider.value = 255)
        (number >= 0 && number <= 255) ? (greenSlider.value = number) : (greenTF.text = "255")
        downView.backgroundColor = UpdateDownViewColor.updateDownViewColor(red: redSlider.value,
            green: greenSlider.value,
            blue: blueSlider.value,
            opacity: opacitySlider.value)
        hexTF.text = ConvertColor().hexFromUIColor(color: downView.backgroundColor!)

    }
    @IBAction func blueTFActiob(_ sender: Any) {
        let number = TextToSlider().textToNumber(text: blueTF.text)
        (number >= 0 && number <= 255) ? (blueSlider.value = number) : (blueSlider.value = 255)
        (number >= 0 && number <= 255) ? (blueSlider.value = number) : (blueTF.text = "255")
        downView.backgroundColor = UpdateDownViewColor.updateDownViewColor(red: redSlider.value,
            green: greenSlider.value,
            blue: blueSlider.value,
            opacity: opacitySlider.value)
        hexTF.text = ConvertColor().hexFromUIColor(color: downView.backgroundColor!)

    }
    @IBAction func opacituTFAction(_ sender: Any) {
        let number = TextToSlider().textToNumber(text: opacityTF.text)
        (number >= 0 && number <= 100) ? (opacitySlider.value = number) : (opacitySlider.value = 100)
        (number >= 0 && number <= 100) ? (opacitySlider.value = number) : (opacityTF.text = "100")
        downView.backgroundColor = UpdateDownViewColor.updateDownViewColor(red: redSlider.value,
            green: greenSlider.value,
            blue: blueSlider.value,
            opacity: opacitySlider.value)
        hexTF.text = ConvertColor().hexFromUIColor(color: downView.backgroundColor!)

    }



    @IBAction func redSliderAction(_ sender: Any) {
//        guard let valueRed = redTF.text else { return }
//        guard let number = Int(valueRed) else { return }

        redTF.text = String(Int(redSlider.value))
        downView.backgroundColor = UpdateDownViewColor.updateDownViewColor(red: redSlider.value,
            green: greenSlider.value,
            blue: blueSlider.value,
            opacity: opacitySlider.value)
        hexTF.text = ConvertColor().hexFromUIColor(color: downView.backgroundColor!)

    }
    @IBAction func greenSliderAction(_ sender: Any) {
        greenTF.text = String(Int(greenSlider.value))
        downView.backgroundColor = UpdateDownViewColor.updateDownViewColor(red: redSlider.value,
            green: greenSlider.value,
            blue: blueSlider.value,
            opacity: opacitySlider.value)
        hexTF.text = ConvertColor().hexFromUIColor(color: downView.backgroundColor!)
    }
    @IBAction func blueSliderAction(_ sender: Any) {
        blueTF.text = String(Int(blueSlider.value))
        downView.backgroundColor = UpdateDownViewColor.updateDownViewColor(red: redSlider.value,
            green: greenSlider.value,
            blue: blueSlider.value,
            opacity: opacitySlider.value)
        hexTF.text = ConvertColor().hexFromUIColor(color: downView.backgroundColor!)
    }
    @IBAction func opacitySliderAction(_ sender: Any) {
        opacityTF.text = String(Int(opacitySlider.value))
        downView.backgroundColor = UpdateDownViewColor.updateDownViewColor(red: redSlider.value,
            green: greenSlider.value,
            blue: blueSlider.value,
            opacity: opacitySlider.value)
        hexTF.text = ConvertColor().hexFromUIColor(color: downView.backgroundColor!)
    }



    @IBAction func buttonTapped() {
        guard let color = downView.backgroundColor else { return }
        let opacity = opacitySlider.value / 100
        complition?(color, opacity)
        _ = navigationController?.popToRootViewController(animated: true)
        print(opacity)
    }



}
