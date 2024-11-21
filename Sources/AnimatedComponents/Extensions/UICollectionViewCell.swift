//
//  UICollectionViewCell.swift
//  AnimatedComponents
//
//  Created by lymanny on 21/11/24.
//

import UIKit

public extension UICollectionViewCell {
    
    // MARK: - Shake Animation
    func animateShake(delay: Double = 0, completion: (() -> Void)? = nil) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            let shake = CAKeyframeAnimation(keyPath: "transform.translation.x")
            shake.timingFunction = CAMediaTimingFunction(name: .linear)
            shake.duration = 0.5
            shake.values = [-10, 10, -8, 8, -5, 5, 0]
            self.layer.add(shake, forKey: "shake")
            
            DispatchQueue.main.asyncAfter(deadline: .now() + shake.duration) {
                completion?()
            }
        }
    }
    
    // MARK: - Swing Animation with Recursive Approach
    func animateSwingRecursively(times: Int = 2, delay: Double = 0, completion: (() -> Void)? = nil) {
        guard times > 0 else {
            UIView.animate(withDuration: 0.1) {
                self.transform = .identity
            }
            completion?()
            return
        }
        
        UIView.animate(withDuration: 0.3, delay: delay, options: [.autoreverse], animations: {
            self.transform = CGAffineTransform(rotationAngle: 0.05)
        }) { _ in
            self.transform = CGAffineTransform(rotationAngle: -0.05)
            self.animateSwingRecursively(times: times - 1, completion: completion)
        }
    }
    
    // MARK: - Jiggle Animation
    func animateJiggle(completion: (() -> Void)? = nil) {
        let animation = CAKeyframeAnimation(keyPath: "transform.rotation")
        animation.values = [-0.05, 0.05, -0.05]
        animation.autoreverses = true
        animation.repeatCount = 4
        animation.duration = 0.1
        self.layer.add(animation, forKey: "jiggle")
        completion?()
    }
    
    // MARK: - Shake Vertically Animation
    func animateShakeVertical(completion: (() -> Void)? = nil) {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.y")
        animation.timingFunction = CAMediaTimingFunction(name: .linear)
        animation.duration = 0.4
        animation.values = [-10, 10, -8, 8, -5, 5, 0]
        self.layer.add(animation, forKey: "shakeVertical")
        completion?()
    }
    
}

