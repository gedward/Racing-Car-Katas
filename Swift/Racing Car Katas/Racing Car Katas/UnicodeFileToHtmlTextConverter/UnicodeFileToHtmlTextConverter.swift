//
//  UnicodeFileToHtmlTextConverter.swift
//  Racing Car Katas
//
//  Created by Gerard Gonzalez on 11/30/15.
//
//

import Foundation

func htmlEncodeString(textToConvert: NSString) -> NSString {
    return textToConvert.stringByReplacingOccurrencesOfString("&", withString: "&amp;").stringByReplacingOccurrencesOfString("<", withString: "&lt;").stringByReplacingOccurrencesOfString(">", withString: "&gt;").stringByReplacingOccurrencesOfString("\n", withString: "<br />")
}

class UnicodeFileToHtmlTextConverter {
    
    private(set) var fullFilenameWithPath: String
    
    init(fullFilenameWithPath: String) {
        self.fullFilenameWithPath = fullFilenameWithPath
    }
    
    func convertToHtml() -> NSString {
        let file = "file.txt"
        
        if let dir : NSString = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true).first {
            let path = dir.stringByAppendingPathComponent(file);
            
            do {
                let text = try NSString(contentsOfFile: path, encoding: NSUTF8StringEncoding)
                    return htmlEncodeString(text)
            } catch {}
        }
        return ""
    }
}
