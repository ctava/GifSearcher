//
//  GifSearchService.swift
//  GifSearcher
//
//  Created by Christopher Tava on 9/19/15.
//  Copyright © 2015 Multitouchproducts. All rights reserved.
//

import Foundation
import Alamofire

class GifSearchService : NSObject {
  
  override init() {
    
  }
  
  func search() {
    NSLog("search was called")
    Alamofire.request(.GET, "https://api.giphy.com/v1/gifs/trending?api_key=dc6zaTOxFJmzC", parameters: ["foo": "bar"])
      .response { request, response, data, error in
        print(request)
        print(response)
        print(error)
    }
  }
  
}
