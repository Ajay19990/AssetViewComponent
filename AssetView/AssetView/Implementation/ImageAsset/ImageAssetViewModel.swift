//
//  ImageAssetViewModel.swift
//  AssetView
//
//  Created by Ajay Choudhary on 06/06/23.
//

import UIKit

class ImageAssetViewModel: AssetViewModel {
    weak var viewActions: AssetViewActions?
    var delegate: AssetViewModelDelegate?
    
    var asset: LPAsset {
        didSet {
            viewActions?.applyModel()
        }
    }
    
    init(
        viewActions: AssetViewActions? = nil,
        asset: LPAsset
    ) {
        self.viewActions = viewActions
        self.asset = asset
    }
    
    func assetLoadingFailed() {
        delegate?.assetLoadedWith(success: false)
    }
    
    func assetLoadingSucceded() {
        delegate?.assetLoadedWith(success: true)
    }
}
