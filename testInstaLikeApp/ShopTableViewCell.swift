import UIKit

class ShopTableViewCell: UITableViewCell {

    @IBOutlet weak var shopCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let nib = UINib(nibName: "ShopCollectionViewCell", bundle: nil)
        shopCollectionView.register(nib, forCellWithReuseIdentifier: "ShopCollectionViewCell")
    }
    
    /**
    毎回デリゲートを更新する
     */
    func setCollectionViewDataSourceDelegate
        <D: UICollectionViewDataSource & UICollectionViewDelegate>
        (dataSourceDelegate: D, forRow row: Int) {
        
        shopCollectionView.delegate = dataSourceDelegate
        shopCollectionView.dataSource = dataSourceDelegate
        shopCollectionView.reloadData()
    }
}
