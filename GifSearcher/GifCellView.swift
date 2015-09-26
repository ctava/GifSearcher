//
//  GifCellView
//  GifSearcher
//
//  Created by Christopher Tava on 9/19/15.
//  Copyright © 2015 Multitouchproducts. All rights reserved.
//

import Foundation
import UIKit
import ReactiveCocoa
import Swift_RAC_Macros

class GifCellView: UITableViewCell, ReactiveView {
  
  @IBOutlet weak var ageText: UILabel!
  @IBOutlet weak var gifImageView: UIImageView!
  
  lazy var scheduler: QueueScheduler = {
    let queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0)
    return QueueScheduler(queue: queue)
  }()
  
  func bindViewModel(viewModel: AnyObject) {
    /*
    if let gifViewModel = viewModel as? GifViewModel {

      let triggerSignal = self.rac_prepareForReuseSignal.asSignal().pipe(toVoidSignal)
      gifImageView.image = nil
      gifImageSignalProducer(gifViewModel.url.value)
        |> startOn(scheduler)
        |> takeUntil(triggerSignal)
        |> observeOn(QueueScheduler.mainQueueScheduler)
        |> start(next: {
          self.gifImageView.image = $0
        })
    } */
  }
  
  private func gifImageSignalProducer(imageUrl: String) -> SignalProducer<UIImage, NoError> {
    return SignalProducer {
      sink, _ in
      let data = NSData(contentsOfURL: NSURL(string: imageUrl)!)
      let image = UIImage(data: data!)
      sendNext(sink, image!)
      sendCompleted(sink)
    }
  }
}
