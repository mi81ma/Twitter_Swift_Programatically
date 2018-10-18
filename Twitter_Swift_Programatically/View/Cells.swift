//
//  Cells.swift
//  Twitter_Swift_Programatically
//
//  Created by masato on 18/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import LBTAComponents
let twitterBlue = UIColor(r: 61, g: 167, b: 244)

class UserFooter: DatasourceCell {

    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Show me more"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = twitterBlue

        return label
    }()


    override func setupViews() {
        super.setupViews()

        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0 , rightConstant: 0, widthConstant: 0, heightConstant: 0)

    }
}



class UserHeader: DatasourceCell {

    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "WHO TO FOLLOW"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()

    override func setupViews() {
        super.setupViews()

        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g:230, b:230)

        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0  )
    }
}



