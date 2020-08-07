//
//  ViewController.swift
//  SecondApplication
//
//  Created by Fray Pineda on 11/13/18.
//  Copyright © 2018 Fray Pineda. All rights reserved.
//

import UIKit
// En el asset a la imagen se le pone nombreImagen@2x para que cuando la lleve al asset automaticamente se me ubique en 2x
//control y luego enter en un titulo de label es para poder escribir hacia abajo y no todo en una sola linea y se cambia en attribute inspector la propiedad lines
// Si es una mensaje se puede usar label pero si es algo informativo se puede usar un text view
class ViewController: UIViewController {

    override var prefersStatusBarHidden: Bool {
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        // el target self es que se aplica a este viewController
        leftSwipe.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(leftSwipe)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UIViewController {
    
    // el @objc es de objective c
    
    @objc func swipeAction(swipe: UISwipeGestureRecognizer) {
        
        switch swipe.direction.rawValue {
        case 1:
            //aqui le digo que use el segue
            performSegue(withIdentifier: "goLeft", sender: self)
            
        case 2:
            performSegue(withIdentifier: "goRight", sender: self)
        default:
            break
            
        }
        
    }
}

