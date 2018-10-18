//
//  Cells.swift
//  Twitter_Swift_Programatically
//
//  Created by masato on 18/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import LBTAComponents

class UserFooter: DatasourceCell {
    override func setupViews() {
        super.setupViews()
        backgroundColor = .green
    }
}

class UserHeader: DatasourceCell {
    override func setupViews() {
        super.setupViews()
        backgroundColor = .blue
    }
}

class UserCell: DatasourceCell {

    override var datasourceItem: Any? {
        didSet {
//            nameLabel.text = datasourceItem as? String
        }
    }

    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        return imageView
    }()

    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "TEST TEST TEST"
        label.backgroundColor = .green
        return label
    }()

    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "username"
        label.backgroundColor = .purple
        return label
    }()

    override func setupViews() {
        super.setupViews()
        backgroundColor = .yellow

        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(usernameLabel)


        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)



        // Text Position in Cell
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 4, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)

        usernameLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
    }
}