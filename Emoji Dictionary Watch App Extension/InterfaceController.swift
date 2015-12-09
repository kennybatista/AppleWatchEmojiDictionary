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
    
    var emojis = ["🐶","😡","👻","🐤","🍎","🍰","⚽️"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        self.table.setNumberOfRows(self.emojis.count, withRowType: "EmojiRow");
        
        for index in 0..<self.emojis.count {
            let theRow = self.table.rowControllerAtIndex(index) as! EmojiRow
            theRow.emojiRowLabel.setText(self.emojis[index]);
        }
    }
    
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        self.pushControllerWithName("ZoomEmojiController", context: self.emojis[rowIndex])
    }

   

}
