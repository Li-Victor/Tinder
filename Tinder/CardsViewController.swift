//
//  CardsViewController.swift
//  Tinder
//
//  Created by Victor Li on 10/15/18.
//  Copyright © 2018 Victor Li. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    var cardInitialCenter: CGPoint!
    @IBOutlet weak var cardImageView: UIImageView!
    
    @IBAction func didPanImage(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        
        if sender.state == .began {
            cardInitialCenter = cardImageView.center
        } else if sender.state == .changed {
            cardImageView.center = CGPoint(x: cardInitialCenter.x + translation.x, y: cardInitialCenter.y)
        } else if sender.state == .ended {
            cardImageView.center = cardInitialCenter
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
