//
//  TimerSettingViewController.swift
//  Fitness_NoTwo
//
//  Created by kuani on 2022/10/25.
//

import UIKit

class TimerSettingViewController: UIViewController {

    @IBOutlet weak var settingLabel: UILabel!
    @IBOutlet weak var countImage1: UIImageView!
    @IBOutlet weak var countImage: UIImageView!
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var alarmDatePicker: UIDatePicker!
    
    let formatter = DateFormatter()
    var settingTimer: Timer?
    var countDownTime: TimeInterval = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        formatter.dateFormat = "m:ss"
        countDownLabel.isHidden = true
        cancelButton.isEnabled = false
        countImage.isHidden = true
        countImage1.isHidden = false
        settingLabel.isHidden = false
    }
    
   
    func endTimer() {
        settingTimer?.invalidate()

        alarmDatePicker.isHidden = false
        countDownLabel.isHidden = true
        cancelButton.isEnabled = false
        countImage.isHidden = true
        countImage1.isHidden = false
        settingLabel.isHidden = false
            
        startButton.setTitle("start", for: .normal)
        countDownTime = 0
    }
    
    @IBAction func startAction(_ sender: UIButton) {
           alarmDatePicker.isHidden = true
           countDownLabel.isHidden = false
           cancelButton.isEnabled = true
           countImage.isHidden = false
           countImage1.isHidden = true
           settingLabel.isHidden = true
           
           if countDownTime == 0 {
               countDownLabel.text = formatter.string(from: alarmDatePicker.date)
               countDownTime = alarmDatePicker.countDownDuration
           }
               
           if startButton.titleLabel?.text == "start" {
               startButton.setTitle("pause", for: .normal)
               
               settingTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (settingTimer) in
                   if self.countDownTime != 0 {
                       self.countDownTime -= 1
                       
                       let hour = Int(self.countDownTime) / 3600
                       //let hour = 0
                       let minute = (Int(self.countDownTime) % 3600) / 60
                       //let minute = 0
                       let second = (Int(self.countDownTime) % 3600) % 60
                       //let second = 40
                        
                       let dateComponents = DateComponents(calendar: Calendar.current, hour: hour, minute: minute, second: second)
                       self.countDownLabel.text = self.formatter.string(from: dateComponents.date!)
                        
                   } else {
                       self.endTimer()
                       
                      
                       let alarmController = UIAlertController(title: nil, message: "Time's Up", preferredStyle: .alert)
                       alarmController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                       self.present(alarmController, animated: true, completion: nil)
                   }
               }
           } else if startButton.titleLabel?.text == "pause" {
               startButton.setTitle("start", for: .normal)
               settingTimer?.invalidate()
           }
                        
    }
    
    
    @IBAction func cancelAction(_ sender: UIButton) {
        endTimer()
    }
    
}


