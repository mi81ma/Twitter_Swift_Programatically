//
//  HomeDatasourceController.swift
//  Twitter_Swift_Programatically
//
//  Created by masato on 18/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {

    let words = ["user1", "user2", "user3"]

    override func numberOfItems(_ section: Int) -> Int {
        return words.count
    }
}

class HomeDatasourceController: DatasourceController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let homeDatasource = HomeDatasource()
        self.datasource = homeDatasource

    }
}
