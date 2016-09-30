//
//  ViewController.swift
//  DemoFacebookMessenger
//
//  Created by faizul hasan on 9/29/16.
//  Copyright © 2016 faizul hasan. All rights reserved.
//

import UIKit

class FriendsController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
   fileprivate let cellId = "cellid"

    override func viewDidLoad() {
        super.viewDidLoad()
    navigationItem.title = "Recent"
    collectionView?.backgroundColor = UIColor.white
    collectionView?.alwaysBounceVertical = true
        
// for Register cell
    collectionView?.register(FriendCell.self, forCellWithReuseIdentifier: cellId)
        
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width,height: 100)
    }


}
