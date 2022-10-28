//
//  TrainViewController.swift
//  Fitness_NoTwo
//
//  Created by gih96984 on 2022/10/27.
//

import UIKit

class TrainViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var gifImageView: UIImageView!
    
    
    var fitnessSelect:FitnessItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        let animatedImage = UIImage.animatedImageNamed("反握引體向上(肱二頭肌、背部肌群)-", duration: 1)

        
        

        switch fitnessSelect.itemName{
        case "臀部運動":
            nameLabel.text = "深蹲一百下"
        case "手臂運動":
            nameLabel.text = "跟女朋友牽手"
            gifImageView.image = animatedImage
        case "腿部運動":
            nameLabel.text = "跑操場十圈"
        default:
            break
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
