//
//  GifSearchViewModel.swift
//  GifSearcher
//
//  Created by Christopher Tava on 9/21/15.
//  Copyright © 2015 Multitouchproducts. All rights reserved.
//

import Foundation
import ReactiveCocoa

class GifSearchViewModel : NSObject {
  
  let searchText = MutableProperty<String>("")
  let queryExecutionTime = MutableProperty<String>("")
  let isSearching = MutableProperty<Bool>(false)
  let gifs = MutableProperty<[GifViewModel]>([GifViewModel]())
  
  let searchService: GifSearchService
  
  init(searchService: GifSearchService) {
    
    self.searchService = searchService
    
    let name = MutableProperty<String>("")
    
    /*
    searchService.requestAccessToGifSignal()
      |> then(searchText.producer |> mapError { _ in GifInstantError.NoError.toError() })
      |> filter {
        count($0) > 3
      }
      |> throttle(1.0, onScheduler: QueueScheduler.mainQueueScheduler)
      |> on(next: {
        _ in self.isSearching.put(true)
      })
      |> flatMap(.Latest) { text in
        self.searchService.signalForSearchWithText(text)
      }
      |> observeOn(QueueScheduler.mainQueueScheduler)
      |> start(next: {
        response in
        self.isSearching.put(false)
        self.queryExecutionTime.put("Execution time: \(response.responseTime)")
        self.gifs.put(response.tweets.map { gifViewModel(gif: $0) })
        }, error: {
          println("Error \($0)")
      }) */
    
    /*
    timer(1.0, onScheduler: QueueScheduler.mainQueueScheduler)
      |> start(next: {
        _ in
        for gif in self.gifs.value {
          gif.updateTime()
        }
      }) */
  }
  
}
