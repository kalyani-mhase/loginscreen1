//
//  NewViewController.swift
//  loginScreen
//
//  Created by Admin on 06/01/22.
//

import UIKit

class NewViewController: UIViewController {
  var img = ["i1","i2","i3","i4","i5","i6"]
  var name = ["All","Decor","Electronics","Entertainment","Fashion","farniture"]
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}
//MARK:UICollectionViewDelegateFlowLayout
extension NewViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let collectionWidth = collectionView.bounds.width
        return CGSize(width: collectionWidth, height: collectionWidth)
    }
}
//Mark:UICollectionViewDataSource
extension NewViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let img1 = img[indexPath.row]
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell
        {
            switch indexPath.row {
            case 0:
                cell.backgroundColor = #colorLiteral(red: 0.2424099743, green: 0.603574872, blue: 0.8407264352, alpha: 1)
            case 1:
                cell.backgroundColor = #colorLiteral(red: 0.369381994, green: 0.81596452, blue: 0.6148806214, alpha: 1)
            case 2:
                cell.backgroundColor = #colorLiteral(red: 0.5567461848, green: 0.3438472748, blue: 0.5171214342, alpha: 1)
            case 3:
                cell.backgroundColor = #colorLiteral(red: 0.9488188624, green: 0.5693075061, blue: 0.3501448631, alpha: 1)
            case 4:
                cell.backgroundColor = #colorLiteral(red: 0.9418999553, green: 0.4596065879, blue: 0.4447811842, alpha: 1)
            case 5:
                cell.backgroundColor = #colorLiteral(red: 0.3411773741, green: 0.5297006965, blue: 0.7251250744, alpha: 1)
            default:
                cell.backgroundColor = #colorLiteral(red: 0.4169070125, green: 0.6570370793, blue: 0.9437184334, alpha: 1)
            }
            cell.image.image = UIImage(named: img1)
            cell.label.text = name[indexPath.row]
            
            return cell
    }
        return CollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        name.count
    }
    
}

