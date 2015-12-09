//
//  InterfaceController.swift
//  Emoji Dictionary Watch App Extension
//
//  Created by Kenny Batista on 12/8/15.
//  Copyright © 2015 Kenny Batista. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var table: WKInterfaceTable!
    
    var emojis = ["🐶","🐤","🐹","🐥","🐔","🐒","🐣"]
    
    
    //"ViewDidLoad"
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        
        //How many row?
        //PS: set the row ---------returnTheReceiver.emojis.value -------EmojiRow is defined is defined in the IB's row identifier
        self.table.setNumberOfRows(self.emojis.count, withRowType: "EmojiRow");
        
        
        //Adding emojis to those rows
        for index in 0..<self.emojis.count {
            let theRow = self.table.rowControllerAtIndex(index) as! EmojiRow
            theRow.emojiRowLabel.setText(self.emojis[index]);
        }
    }
    
    //Pushing onto a new interface controller when a row is touched.
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        self.pushControllerWithName("ZoomEmojiController", context: self.emojis[rowIndex])
    }

   

}
