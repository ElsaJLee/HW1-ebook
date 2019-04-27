//
//  spiningViewController.swift
//  HW1 ebook
//
//  Created by Danielpan on 2019/4/27.
//  Copyright © 2019 Danielpan. All rights reserved.
//

import UIKit


class spiningViewController: UIViewController {
    /*@IBOutlet weak var spiningButton: UIButton!*/
  /*  @IBOutlet weak var spinImg: UIImageView!*/
    @IBOutlet weak var spining: UIImageView!
    
    override func viewDidLoad() {
     /*   @IBOutlet var _: [UIImageView]!*/
        super.viewDidLoad()
       
        spining.isUserInteractionEnabled = true
        
        let rotationGesture = UIRotationGestureRecognizer(target: self, action:#selector(self.rotationGesture))
        spining.addGestureRecognizer(rotationGesture)
        // Do any additional setup after loading the view.
    }
   
    @objc func rotationGesture(sender:UIRotationGestureRecognizer){
        sender.view?.transform = (sender.view?.transform)!.rotated(by: sender.rotation)
        sender.rotation = 0
       
    }
    /* @IBAction func spining(_ sender: Any) {
   /*     UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 2, delay:0, animations: {
                //self.spinImg.frame = CGRect(x: 100, y: 150, width: 200,height: 300)
                self.spinImg.alpha = 1
                self.spinImg.transform = CGAffineTransform(rotationAngle:99999)
               // self.spinImg.backgroundColor = UIColor.blue
                })*/
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 5, delay:0, animations: {
            //self.spinImg.frame = CGRect(x: 100, y: 150, width: 200,height: 300)
            self.spinImg.alpha = 1
            self.spinImg.transform = CGAffineTransform(rotationAngle: CGFloat.pi * CGFloat(rand) )
        
            // self.spinImg.backgroundColor = UIColor.blue
        })
        
 
  
}
    */
    
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



