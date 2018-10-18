//
//  HomeDatasource.swift
//  Twitter_Swift_Programatically
//
//  Created by masato on 18/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import LBTAComponents


class HomeDatasource: Datasource {

    let words = ["user1", "user2", "user3"]

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
        return words[indexPath.item]
    }

    override func numberOfItems(_ section: Int) -> Int {
        return words.count
    }
}
