//
//  ViewController.swift
//  SlotMaster
//
//  Created by Steven Lai on 2021-01-14.
//

import UIKit

class ViewController: UIViewController {
  let imgNames: [String] = ["lemon", "cherries", "dollarsign", "grapes", "number7"]
  
  var randImg1: String = ""
  var randImg2: String = ""
  var randImg3: String = ""
  var total: Int = 0
  
  @IBOutlet weak var imgView1: UIImageView!
  @IBOutlet weak var imgView2: UIImageView!
  @IBOutlet weak var imgView3: UIImageView!
  @IBOutlet weak var totalPoint: UILabel!
  @IBOutlet weak var pointGain: UILabel!
  
  // Play btn click event
  @IBAction func playBtnTapped(_ sender: UIButton) {
    if let randImg = imgNames.randomElement() {
      self.imgView1.image = UIImage(named: randImg)
      randImg1 = randImg
    }
    
    if let randImg = imgNames.randomElement() {
      self.imgView2.image = UIImage(named: randImg)
      randImg2 = randImg
    }
    
    if let randImg = imgNames.randomElement() {
      self.imgView3.image = UIImage(named: randImg)
      randImg3 = randImg
    }
    
    // Display gain points
    displayGainPoint(img1:randImg1, img2:randImg2, img3:randImg3)
    // Calculate total point
    calcTotal(img1:randImg1, img2:randImg2, img3:randImg3)
  }
  
  // Display gain points func
  func displayGainPoint(img1: String, img2: String, img3: String) {
    if img1 == img2 || img2 == img3 || img1 == img3 {
      self.pointGain.text = "You Got 2 Points!"
    }
    else if img1 == img2 && img2 == img3 {
      self.pointGain.text = "You Got 5 Points!"
    }
    else {
      self.pointGain.text = ""
    }
  }
  
  // Calculate total func
  func calcTotal(img1: String, img2: String, img3: String) {
    if img1 == img2 || img2 == img3 || img1 == img3 {
      total += 2
    }
    else if img1 == img2 && img2 == img3 {
      total += 5
    }
    
    self.totalPoint.text = String(total)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
  }
}

