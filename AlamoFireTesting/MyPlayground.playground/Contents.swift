//: Playground - noun: a place where people can play

import UIKit
import Alamofire

import XCPlayground
XCPlaygroundPage.currentPage.needsIndefiniteExecution = false //true if testing



let parameters: [String:AnyObject] = ["q": "elephant", "format": "json", "pretty": 1,
                                      "no_html": 1, "skip_disambig": 1]
Alamofire.request(.GET, "https://api.duckduckgo.com", parameters: parameters).responseJSON {
    response in
    
    if let JSON = response.result.value {
        JSON
    }
    
    XCPlaygroundPage.currentPage.needsIndefiniteExecution = false
}
