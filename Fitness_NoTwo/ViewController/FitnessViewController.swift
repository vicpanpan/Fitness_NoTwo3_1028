//
//  FitnessViewController.swift
//  Fitness_NoTwo
//
//  Created by vicpan on 2022/10/21.
//

import UIKit

class FitnessViewController: UIViewController {
    
    
    @IBOutlet weak var fitnessName: UILabel!
    @IBOutlet weak var countDownLabel: UILabel!
    
    var fitness:FitnessItem!
    
    
    let formatter = DateFormatter()
    var settingTimer: Timer?
    var countDownTime = 40
    
    var settingTimer2: Timer?
    var countDownTime2 = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        formatter.dateFormat = "m:ss"
        
        timerSetting()
        breakTime()
        // Do any additional setup after loading the view.
    }
    
    func timerSetting(){
        
        
       
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
                
            }
            else {
               
               
               
               let alarmController = UIAlertController(title: nil, message: "Time's Up", preferredStyle: .alert)
               alarmController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
               self.present(alarmController, animated: true, completion: nil)
                
                
               }
               
        }
    }
    func breakTime(){
        
        
        settingTimer2 = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (settingTimer) in
            
            if self.countDownTime2 != 0 {
                self.countDownTime2 -= 1
                
                let hour = Int(self.countDownTime2) / 3600
                //let hour = 0
                let minute = (Int(self.countDownTime2) % 3600) / 60
                //let minute = 0
                let second = (Int(self.countDownTime2) % 3600) % 60
                //let second = 40
                
                let dateComponents = DateComponents(calendar: Calendar.current, hour: hour, minute: minute, second: second)
                self.countDownLabel.text = self.formatter.string(from: dateComponents.date!)
                
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
        
}
