//
//  ViewController.swift
//  AdventsOfCode2022
//
//  Created by Aichurok Alymkulova on 03.05.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var person2: UIButton!
    @IBOutlet weak var statusBtn: UILabel!
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissors: UIButton!
    @IBOutlet weak var resetBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // maxCalorie()
        run()
    }
    
    func play(_ sign: SignRPS) {
        let opponent = randomSign()
        person2.setTitle(opponent.emoji, for: .normal)
        
        switch sign {
        case .rock:
            rock.isHidden = false
            paper.isHidden = true
            scissors.isHidden = true
        case .paper:
            rock.isHidden = true
            paper.isHidden = false
            scissors.isHidden = true
        case .scissors:
            rock.isHidden = true
            paper.isHidden = true
            scissors.isHidden = false
        }
        
        let result = sign.getResult(for: opponent)
        switch result {
        case .win:
            statusBtn.text = "You win!🎉"
        case .lose:
            statusBtn.text = "You lose!"
        case .draw:
            statusBtn.text = " It's a draw!"
        }
    }
    
    func reset() {
        rock.isHidden = false
        paper.isHidden = false
        scissors.isHidden = false
        resetBtn.isHidden = false
    }
    
    
    @IBAction func rockBtnTapped(_ sender: Any) {
        play(.rock)
    }
    @IBAction func paperBtnTapped(_ sender: Any) {
        play(.paper)
    }
    @IBAction func scissorsBtnTapped(_ sender: Any) {
        play(.scissors)
    }
    @IBAction func resetTapped(_ sender: Any) {
        reset()
    }
}
