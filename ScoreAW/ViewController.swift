//  Copyright © 2019 Kirill Parkhimchik. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    let scoreLanguages = ["Score","Счет","σκορ","Rezultatas","Հաշիվ","得分了","Wynik","Postići","Skóre"]
    
    var currentLanguage = 0
    
    func nextLanguage() -> Int {
        
        currentLanguage = currentLanguage + 1
        
        if currentLanguage >= scoreLanguages.count {
            currentLanguage = 0
            
        }
        return currentLanguage
    }
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var scoreButtonOutlet: UILabel!
    
    
    @IBAction func scoreChangeButton(_ sender: UIButton) {
        
        scoreLabel.text = scoreLanguages[nextLanguage()]
        
        let number = Int.random(in: 0 ... 10000)
        
        sender.setTitle("\(number)", for: .normal)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

