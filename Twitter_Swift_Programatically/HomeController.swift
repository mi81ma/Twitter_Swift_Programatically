//
//  HomeController.swift
//  Twitter_Swift_Programatically
//
//  Created by masato on 17/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit

class WordCell: UICollectionViewCell {

    // this gets called when
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    let worldLabel: UILabel = {
        let label = UILabel()
        label.text = "TEST TEST TEST"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    func setupViews() {
        backgroundColor = .yellow

        addSubview(worldLabel)
        worldLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        worldLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        worldLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        worldLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}


// *************** Controller ***********************

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    let cellId = "cellId"
    let headerId = "headerId"

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        collectionView?.register(WordCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        
        }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        cell.backgroundColor = .blue

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
}
