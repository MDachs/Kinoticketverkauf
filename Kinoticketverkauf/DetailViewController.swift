//
//  DetailViewController.swift
//  Kinoticketverkauf
//
//  Created by Meik Dachs on 27.09.17.
//  Copyright © 2017 MDachs. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var TheaterView: UICollectionView!
    
    var dataSource = [Seating]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for _ in 1...100 {
            dataSource.append(Seating.empty)
        }
    }
}


extension DetailViewController: UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as UICollectionViewCell
        let seat = dataSource[indexPath.row]
        
        if  seat == Seating.empty {
            cell.backgroundColor = self.randomColor()
        } else {
            cell.backgroundColor = UIColor.gray
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        dataSource[indexPath.row] = Seating.occupied
        collectionView.reloadData()
    }
    
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        let header =  collectionView.dequeueReusableCell(withReuseIdentifier: "HeaderView", for: indexPath)
//        return header
//    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 640, height: 60)
    }
    
    func randomColor() -> UIColor {
        let red  = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    
}


