//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Viswanath Subramani S S on 28/10/17.
//	Assets provided by London App Brewery
//  Copyright © 2017 ViswanathSubramaniSS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var BallImageView: UIImageView!
	
	@IBAction func ShakeButtonPressed(_ sender: UIButton) {
		updateBallImage()
	}
	
	var randomIndex = 0
	let ballImage = ["ball1","ball2","ball3","ball4","ball5"]

	override func viewDidLoad() {
		super.viewDidLoad()
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	func updateBallImage(){
		randomIndex = Int(arc4random_uniform(5))
		BallImageView.image = UIImage(named: ballImage[randomIndex])
	}
	
	override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
		updateBallImage()
	}

}

