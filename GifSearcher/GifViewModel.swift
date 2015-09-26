//
//  GifViewModel.swift
//  GifSearcher
//
//  Created by Christopher Tava on 9/21/15.
//  Copyright © 2015 Multitouchproducts. All rights reserved.
//

import Foundation
import ReactiveCocoa

class GifViewModel: NSObject {
  
  let url: ConstantProperty<String>
  let height: ConstantProperty<String>
  let weight: ConstantProperty<String>
  
  var gif: Gif
  
  init (gif: Gif) {
    self.gif = gif
    self.url = ConstantProperty(gif.url)
    self.height = ConstantProperty(gif.height)
    self.weight = ConstantProperty(gif.weight)
  }

 
}