//
//  ViewControllerRock.swift
//  rockPaperScissors
//
//  Created by ALEXANDER CARLSON on 11/14/22.
//

import UIKit

class ViewControllerRock: UIViewController {
    @IBOutlet weak var rockOutlet: UIImageView!
    @IBOutlet weak var paperOutlet: UIImageView!
    @IBOutlet weak var scissorsOutlet: UIImageView!
    @IBOutlet weak var rockButtonOutlet: UIButton!
    @IBOutlet weak var paperButtonOutlet: UIButton!
    @IBOutlet weak var rock2Outlet: UIImageView!
    @IBOutlet weak var paper2Outlet: UIImageView!
    @IBOutlet weak var scissors2Outlet: UIImageView!
    @IBOutlet weak var scissorsButtonOutlet: UIButton!
    @IBOutlet weak var winloseOutlet: UILabel!
    @IBOutlet weak var winsOutlet: UILabel!
    @IBOutlet weak var lossesOutlet: UILabel!
    @IBOutlet weak var tiesOutlet: UILabel!
    enum Choice{
        case rock, paper, scissors
    }
    var choice: Choice!
    var wins = 0
    var ties = 0
    var losses = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rock2Outlet.isHidden = true
        paper2Outlet.isHidden = true
        scissors2Outlet.isHidden = true
        // Do any additional setup after loading the view.
    }
    @IBAction func rockAction(_ sender: Any) {
        paperOutlet.isHidden = true
        scissorsOutlet.isHidden = true
        paperButtonOutlet.isHidden = true
        scissorsButtonOutlet.isHidden = true
        choice = .rock
        check(c: .rock)
    }
    
    @IBAction func paperAction(_ sender: Any) {
        rockOutlet.isHidden = true
        scissorsOutlet.isHidden = true
        rockButtonOutlet.isHidden = true
        scissorsButtonOutlet.isHidden = true
        choice = .paper
        check1(c: .paper)
    }
    
    @IBAction func scissorsAction(_ sender: Any) {
        rockOutlet.isHidden = true
        paperOutlet.isHidden = true
        rockButtonOutlet.isHidden = true
        paperButtonOutlet.isHidden = true
        choice = .scissors
        check2(c: .scissors)
    }
    
    
    @IBAction func resetButtonOutlet(_ sender: Any) {
        rockOutlet.isHidden = false
        paperOutlet.isHidden = false
        scissorsOutlet.isHidden = false
        rockButtonOutlet.isHidden = false
        paperButtonOutlet.isHidden = false
        scissorsButtonOutlet.isHidden = false
        rock2Outlet.isHidden = true
        paper2Outlet.isHidden = true
        scissors2Outlet.isHidden = true
        winloseOutlet.text = " "
        winsOutlet.text = String(wins)
        lossesOutlet.text = String(losses)
        tiesOutlet.text = String(ties)
        tiesOutlet.text = String(ties)

    }
    
    func check(c: Choice){
        
        let rando = Int.random(in: 1..<4)
        
        if c == .rock && rando == 1{
            rock2Outlet.isHidden = false
            print("tie")
            winloseOutlet.text = "tie"
            ties+=1
        }else if c == .rock && rando == 2{
            paper2Outlet.isHidden = false
            print("lose")
            winloseOutlet.text = "lose"
            losses+=1
        }else if c == .rock && rando == 3{
            scissors2Outlet.isHidden = false
            print("win")
            winloseOutlet.text = "win"
            wins+=1
        }
    }
    func check1(c: Choice){
        
        let rando = Int.random(in: 1..<4)
        
        if c == .paper && rando == 1{
            rock2Outlet.isHidden = false
            print("win")
            winloseOutlet.text = "win"
            wins+=1
        }else if c == .paper && rando == 2{
            paper2Outlet.isHidden = false
            print("tie")
            winloseOutlet.text = "tie"
            ties+=1
        }else if c == .paper && rando == 3{
            scissors2Outlet.isHidden = false
            print("lose")
            winloseOutlet.text = "lose"
            losses+=1
        }
    }
    func check2(c: Choice){
        
        let rando = Int.random(in: 1..<4)
        
        if c == .scissors && rando == 1{
            rock2Outlet.isHidden = false
            print("lose")
            winloseOutlet.text = "lose"
            losses+=1
        }else if c == .scissors && rando == 2{
            paper2Outlet.isHidden = false
            print("win")
            winloseOutlet.text = "win"
            wins+=1
        }else if c == .scissors && rando == 3{
            scissors2Outlet.isHidden = false
            print("tie")
            winloseOutlet.text = "tie"
            ties+=1
        }
    }
}
