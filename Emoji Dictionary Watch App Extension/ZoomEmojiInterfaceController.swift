//
//  ZoomEmojiInterfaceController.swift
//  AppleWatchEmojiDictionary
//
//  Created by Kenny Batista on 12/8/15.
//  Copyright © 2015 Kenny Batista. All rights reserved.
//

import WatchKit
import Foundation


class ZoomEmojiInterfaceController: WKInterfaceController {

    @IBOutlet var ZoomEmojiLabel: WKInterfaceLabel!
    
    @IBOutlet var definitionLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        let emoji = context as! String
        
        //----------------whatever the system fault for the apple watch is - set it to 30.
        let font = UIFont.systemFontOfSize(70)
        
        let specialString = NSAttributedString(string: emoji, attributes: [NSFontAttributeName: font])
        
        self.ZoomEmojiLabel.setAttributedText(specialString)
        
        var definition = "No Definition"
        
        self.ZoomEmojiLabel.setText(emoji)
        
        if emoji == "🐶" {
            definition = "Puppy"
        }
        
        
    }

   

}
