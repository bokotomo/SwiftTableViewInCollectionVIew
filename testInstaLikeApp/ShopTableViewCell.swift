//
//  ShopTableViewCell.swift
//  testInstaLikeApp
//
//  Created by 福本 on 2017/11/26.
//  Copyright © 2017年 Fukumoto. All rights reserved.
//

import UIKit

class ShopTableViewCell: UITableViewCell {

    @IBOutlet weak var shopCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let nib = UINib(nibName: "ShopCollectionViewCell", bundle: nil)
        shopCollectionView.register(nib, forCellWithReuseIdentifier: "ShopCollectionViewCell")
    }
    
    func setCollectionViewDataSourceDelegate
        <D: UICollectionViewDataSource & UICollectionViewDelegate>
        (dataSourceDelegate: D, forRow row: Int) {
        
        shopCollectionView.delegate = dataSourceDelegate
        shopCollectionView.dataSource = dataSourceDelegate
        shopCollectionView.reloadData()
    }
}
