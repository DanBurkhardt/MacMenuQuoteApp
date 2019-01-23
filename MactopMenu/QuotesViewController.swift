//
//  QuotesViewController.swift
//  MactopMenu
//
//  Created by Dan Burkhardt on 1/23/19.
//  Copyright © 2019 Dan Burkhardt. All rights reserved.
//

import Cocoa

class QuotesViewController: NSViewController {
    
    let quoteArray = Quote.all
    var counter = 0
    
    @IBOutlet weak var quoteLabel: NSTextField!
    @IBAction func nextQuote(_ sender: Any) {
        if counter < quoteArray.count - 1{
            counter += 1
            self.quoteLabel.stringValue = quoteArray[counter].description
        }else{
            counter = 0
            self.quoteLabel.stringValue = quoteArray[counter].description
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.quoteLabel.stringValue = quoteArray[counter].description
    }
    
}

extension QuotesViewController {
    // MARK: Storyboard instantiation
    static func freshController() -> QuotesViewController {
        //1.
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        //2.
        let identifier = "QuotesViewController"
        //3.
        guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? QuotesViewController else {
            fatalError("Why cant i find QuotesViewController? - Check Main.storyboard")
        }
        return viewcontroller
    }
}
