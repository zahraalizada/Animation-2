//
//  ViewController.swift
//  Animation-2
//
//  Created by Zahra Alizada on 17.05.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var orangeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        basicAnimation(key: "cornerRadius", from: 0, to: 80)
        basicAnimation(key: "transform.rotation.z", from: 0, to: Double.pi)
        greenViewAnimation()
        
    }

    func greenViewAnimation() {
        UIView.animate(withDuration: 2, delay: 0, options: [.autoreverse, .repeat]) {
            self.greenView.layer.cornerRadius = 30
            self.greenView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            self.greenView.transform = CGAffineTransform(translationX: -200, y: 0)
            self.greenView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            
        }
    }
    
    func basicAnimation(key: String, from: Any, to: Any) {
        let animation = CABasicAnimation(keyPath: key)
        animation.fromValue = from
        animation.toValue = to
        animation.duration = 2
        animation.repeatCount = .infinity
        animation.autoreverses = true
        orangeView.layer.add(animation, forKey: nil)
    }
    
    

}

