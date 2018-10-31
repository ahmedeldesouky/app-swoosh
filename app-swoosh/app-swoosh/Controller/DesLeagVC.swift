//
//  DesLeagVC.swift
//  app-swoosh
//
//  Created by Ahmed Mohamed El-Desouky on 10/30/18.
//  Copyright © 2018 Ahmed Mohamed El-Desouky. All rights reserved.
//

import UIKit

class DesLeagVC: UIViewController {

    @IBOutlet weak var nxtBtn: MyBtn!
    
    @IBOutlet weak var MenOutlet: MyBtn!
    @IBOutlet weak var WomeOutlet: MyBtn!
    @IBOutlet weak var CoedOutlet: MyBtn!

    var type:YourOption!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        type=YourOption()
    }

    
    @IBAction func NextBtn(_ sender: Any) {
        
        if MenOutlet.isSelected {
            performSegue(withIdentifier: "MenSegue", sender: self)
        }
        else if WomeOutlet.isSelected{
        performSegue(withIdentifier: "WomenSegue", sender: self)
            }
            
        else  {
            if CoedOutlet.isSelected {
                performSegue(withIdentifier: "CoedSegue", sender: self)
            }
        }
        }


    
    
    @IBAction func menBrn(_ sender: Any) {
        selectleage(leagueType: "men")
    }
    
    @IBAction func womenBtn(_ sender: Any) {
        selectleage(leagueType: "women")
    }
    
    @IBAction func coEdBtn(_ sender: Any) {
        selectleage(leagueType: "coed")
    }
    
    
    func selectleage(leagueType: String) {
        type.leaguename = leagueType
        nxtBtn.isEnabled = true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let menVc = segue.destination as? MenVC {
            menVc.mdegree = type
        } else if let womenVC = segue.destination as? WomenVC {
                    womenVC.wdegree = type
            }
                else {
                    if let coedVC = segue.destination as? CoedVC {
                        coedVC.cdegree = type
                    }
                    
                }
        }
        
}


