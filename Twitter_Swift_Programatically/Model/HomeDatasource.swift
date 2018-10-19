//
//  HomeDatasource.swift
//  Twitter_Swift_Programatically
//
//  Created by masato on 18/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import LBTAComponents


class HomeDatasource: Datasource {

    let users: [User] = {
        let brianUser = User(name: "Brian Voong", username: "@buildthatapp", bioText: "iPhone, iPad, iOS Programming Community. Join us to learn Swift, Objective-C and build iOS apps!", profileImage:#imageLiteral(resourceName: "A4"))

        let rayUser = User(name: "Ray Wenderlich", username: "@rwenderlich", bioText: "Ray Wenderlich is as iPhone developer and tweets on topics related to iPhone, software, and gaming. Check out our conference.", profileImage:#imageLiteral(resourceName: "Ad"))

        let kindleCourseUser = User(name: "Kindle Course", username: "@kindleCourse", bioText: "This recently released course on https:llvideos.letsbuildthatapp.com/basic-training provides some excellent guidance on how to use UITableView", profileImage: #imageLiteral(resourceName: "A4"))

        return [brianUser, rayUser, kindleCourseUser]
    }()

//    let words = ["user1", "user2", "user3"]

    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }

    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }

    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }

    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }

    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
}
