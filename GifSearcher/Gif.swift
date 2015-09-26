//
//  Gif.swift
//  GifSearcher
//
//  Created by Christopher Tava on 9/22/15.
//  Copyright © 2015 Multitouchproducts. All rights reserved.
//

import Foundation

struct Gif {
  let url : String
  let height : String
  let weight : String
  let timestamp: NSDate
  init(json: NSDictionary) {
    timestamp = Static.formatter.dateFromString(json["created_at"] as! String)!
    self.url = json["url"] as! String
    self.height = json["height"] as! String
    self.weight = json["weight"] as! String
  }
}

struct Static {
  static let formatter : NSDateFormatter = {
    let formatter = NSDateFormatter()
    formatter.dateFormat = "EEE MMM d HH:mm:ss Z y"
    return formatter
    }()
}