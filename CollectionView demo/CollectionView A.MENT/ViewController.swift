

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let nibFile = UINib(nibName:"CollectionViewCell", bundle: nil)
        self.collectionView.register(nibFile,forCellWithReuseIdentifier:"CollectionViewCell")
        
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
}
extension ViewController: UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier:"CollectionViewCell" , for: indexPath) as? CollectionViewCell else{
            return UICollectionViewCell()
        }
        cell.label.text = "anjali"
        return cell
      }
    }
extension ViewController: UICollectionViewDelegate{
}
