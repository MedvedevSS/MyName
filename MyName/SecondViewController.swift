//
//  SecondViewController.swift
//  MyName
//
//  Created by Сергей Медведев on 21.03.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var myLabel: UILabel!
    //    @IBOutlet  var myLabel: UILabel!
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
    
    @IBAction func showAlert() {
        let alertController = UIAlertController(
            title: "Welcome",
            message: "This is myName App",
            preferredStyle: .alert)
        // Создаем кнопку ОК
        let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
        // Создаем кнопку Cancel
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        // Добавляем обе кнопки в Alert Controller
        alertController.addAction(actionOK)
        alertController.addAction(actionCancel)
        // Вывод всплывающего окна
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func changeLabelText(_ sender: UIButton) {
        if let buttonText = sender.titleLabel!.text {
            self.myLabel.text = "\(buttonText) button was pressed"
        }
    }
    
////    @IBAction func changeLabelText(_ sender: UIButton) {
//        if let buttonText = sender.titleLabel!.text {
//            self.myLabel.text = "\(buttonText) button was pressed"
//        }
//    }
    
}
