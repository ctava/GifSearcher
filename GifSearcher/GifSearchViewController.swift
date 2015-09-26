//
//  GifSearchViewController.swift
//  GifSearcher
//
//  Created by Christopher Tava on 9/21/15.
//  Copyright © 2015 Multitouchproducts. All rights reserved.
//

import Foundation
import UIKit
import ReactiveCocoa

class GifSearchViewController: UIViewController {
  
  @IBOutlet weak var searchTextField: UITextField!
  @IBOutlet weak var searchActivityIndicator: UIActivityIndicatorView!
  @IBOutlet weak var executionTimeTextField: UILabel!
  @IBOutlet weak var gifsTable: UITableView!
  
  private var bindingHelper: TableViewBindingHelper<GifViewModel>!
  
  var viewModel: GifSearchViewModel = {
    let searchService = GifSearchService()
    return GifSearchViewModel(searchService: searchService)
    }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    viewModel.searchText <~ searchTextField.rac_text
    searchActivityIndicator.rac_hidden <~ viewModel.isSearching.producer |> map { !$0 }
    executionTimeTextField.rac_text  <~ viewModel.queryExecutionTime
    //gifsTable.rac_alpha <~ viewModel.isSearching.producer |> map { $0 ? CGFloat(0.5) : CGFloat(1.0) }
    
    bindingHelper = TableViewBindingHelper(tableView: gifsTable, sourceSignal: viewModel.gifs.producer, nibName: "GifCell", selectionCommand: nil)
  }
  
  
  
}