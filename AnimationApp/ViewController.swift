//
//  ViewController.swift
//  AnimationApp
//
//  Created by Kristel Maximova on 27.01.2022.
//

import Spring

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var animationView: SpringView!
    
    // MARK: - Private properties
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description
    }
    
    // MARK: - IB Actions
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.curve = animation.curve
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
}


