//
//  ViewController.swift
//  FunFact
//
//  Created by Van Doan  on 3/21/16.
//  Copyright © 2016 com.vandoona. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    let factsArray = ["Ants stretch when they wake up in the morning.","Ostritches can run faster than horses."]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showFunFact() {
        view.backgroundColor = colorWheel.randomColor()
        funFactLabel.text = factBook.randomFact()
    }

}

