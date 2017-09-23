//
//  AssignmentViewController.swift
//  Math4Kids1
//
//  Created by Shridhar Sukhani on 23/09/17.
//  Copyright © 2017 Shridhar Sukhani. All rights reserved.
//

import UIKit

class AssignmentViewController: UIViewController {

    @IBOutlet weak var q1: UILabel!
    @IBOutlet weak var q2: UILabel!
    @IBOutlet weak var q3: UILabel!
    @IBOutlet weak var q4: UILabel!
    @IBOutlet weak var q5: UILabel!
    @IBOutlet weak var q6: UILabel!
    @IBOutlet weak var q7: UILabel!
    @IBOutlet weak var q8: UILabel!
    @IBOutlet weak var q9: UILabel!
    @IBOutlet weak var q10: UILabel!
    
    
    @IBOutlet weak var a1: UITextField!
    @IBOutlet weak var a2: UITextField!
    @IBOutlet weak var a3: UITextField!
    @IBOutlet weak var a4: UITextField!
    @IBOutlet weak var a5: UITextField!
    @IBOutlet weak var a6: UITextField!
    @IBOutlet weak var a7: UITextField!
    @IBOutlet weak var a8: UITextField!
    @IBOutlet weak var a9: UITextField!
    @IBOutlet weak var a10: UITextField!
    
    
    var ans: [Int] = [0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ans = tenProbs()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getOperator() -> Character {
        let operators: [Character] = ["+", "-", "*"]
        return operators[Int(arc4random_uniform(UInt32(operators.count)))]
    }
    
    func getTwo() -> [Int] {
        var result = [Int]()
        result.append(Int(arc4random_uniform(UInt32(10))))
        result.append(Int(arc4random_uniform(UInt32(10))))
        return result
    }
    
    func getResult(nums: [Int], op: Character) -> Int {
        if op == "+" {
            return nums[0] + nums[1]
        } else if op == "-" {
            return nums[0] - nums[1]
        } else {
            return nums[0] * nums[1]
        }
    }
    
    @IBAction func submit() {
        var score = 0
        if ans[0] == Int(a1.text!)! {
            score += 1
        }
        if ans[1] == Int(a2.text!)! {
            score += 1
        }
        if ans[2] == Int(a3.text!)! {
            score += 1
        }
        if ans[3] == Int(a4.text!)! {
            score += 1
        }
        if ans[4] == Int(a5.text!)! {
            score += 1
        }
        if ans[5] == Int(a6.text!)! {
            score += 1
        }
        if ans[6] == Int(a7.text!)! {
            score += 1
        }
        if ans[7] == Int(a8.text!)! {
            score += 1
        }
        if ans[8] == Int(a9.text!)! {
            score += 1
        }
        if ans[9] == Int(a10.text!)! {
            score += 1
        }
        
        let alert = UIAlertController(title: "Result",
                                      message: "You scored \(score) out of 10",
            preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    // Show problems and return solutions as an Int Array
    func tenProbs() -> [Int] {
        var answers = [Int]()
        
        var op = getOperator()
        var operands = getTwo()
        q1.text = "\(operands[0]) \(op) \(operands[1])"
        answers.append(getResult(nums: operands, op: op))
        
        op = getOperator()
        operands = getTwo()
        q2.text = "\(operands[0]) \(op) \(operands[1])"
        answers.append(getResult(nums: operands, op: op))
        
        op = getOperator()
        operands = getTwo()
        q3.text = "\(operands[0]) \(op) \(operands[1])"
        answers.append(getResult(nums: operands, op: op))
        
        op = getOperator()
        operands = getTwo()
        q4.text = "\(operands[0]) \(op) \(operands[1])"
        answers.append(getResult(nums: operands, op: op))
        
        op = getOperator()
        operands = getTwo()
        q5.text = "\(operands[0]) \(op) \(operands[1])"
        answers.append(getResult(nums: operands, op: op))
        
        op = getOperator()
        operands = getTwo()
        q6.text = "\(operands[0]) \(op) \(operands[1])"
        answers.append(getResult(nums: operands, op: op))
        
        op = getOperator()
        operands = getTwo()
        q7.text = "\(operands[0]) \(op) \(operands[1])"
        answers.append(getResult(nums: operands, op: op))
        
        op = getOperator()
        operands = getTwo()
        q8.text = "\(operands[0]) \(op) \(operands[1])"
        answers.append(getResult(nums: operands, op: op))
        
        op = getOperator()
        operands = getTwo()
        q9.text = "\(operands[0]) \(op) \(operands[1])"
        answers.append(getResult(nums: operands, op: op))
        
        op = getOperator()
        operands = getTwo()
        q10.text = "\(operands[0]) \(op) \(operands[1])"
        answers.append(getResult(nums: operands, op: op))
        
        return answers
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */

}
