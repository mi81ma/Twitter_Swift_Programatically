//
//  HomeDatasourceController.swift
//  Twitter_Swift_Programatically
//
//  Created by masato on 18/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import LBTAComponents

class HomeDatasourceController: DatasourceController {
    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationBarItems()

        let homeDatasource = HomeDatasource()
        self.datasource = homeDatasource
    }


    // Title Image in NavigationBar (Twitter Image)
    private func setupNavigationBarItems() {

        let titleImageView = UIImageView(image: #imageLiteral(resourceName: "Twitter"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)

        // get slim the Image
        titleImageView.contentMode = .scaleAspectFit

        navigationItem.titleView = titleImageView


        // Follow Image in NavigationBar (Follow People Image)
        let followButton = UIButton(type: .system)
        // .withRenderingMode(.alwaysOriginal) is adjusted Image Color
        followButton.setImage(#imageLiteral(resourceName: "AddContact").withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.frame = CGRect(x: 0 , y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)



        // Right Side 2 Buttons in NavigationBar
        let composeButton = UIButton(type: .system)
        composeButton.setImage(#imageLiteral(resourceName: "Write").withRenderingMode(.alwaysOriginal), for: .normal)
        composeButton.frame = CGRect(x: 10, y: 0, width: 34, height: 34)

        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "search").withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)

        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: composeButton), UIBarButtonItem(customView: searchButton)]
    }
    




    // the gap between cellss
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    // Cell's Hight
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        if let user = self.datasource?.item(indexPath) as? User {
//            print(user.bioText)
            // let's get an estimation of the height of our cell based on user.bioText


            // Cell Size Coding
            let approximateWidthOfBioTextView = view.frame.width - 12 - 50 - 12 - 2
            let size = CGSize(width: approximateWidthOfBioTextView, height: 1000)

            // Cell Size
            let attributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)]

            let estimatedFrame = NSString(string: user.bioText).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)

            return CGSize(width: view.frame.width, height: estimatedFrame.height + 66)
        }


        return CGSize(width: view.frame.width, height: 200)
    }

    // Header
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }

    // Footer
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
}
