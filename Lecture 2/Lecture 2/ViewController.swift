//
//  ViewController.swift
//  Lecture 2
//
//  Created by Alana Li on 9/22/22.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var count: UILabel!
   var pressed = 0
   @IBAction func plusButton(_ sender: Any) {
      pressed = pressed + 1
      count.text = String(pressed)
   }
   @IBAction func minusButton(_ sender: Any) {
      pressed = pressed - 1
      count.text = String(pressed)
   }

   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
   }


}

