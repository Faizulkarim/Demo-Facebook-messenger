//
//  Friend.swift
//  DemoFacebookMessenger
//
//  Created by faizul hasan on 9/30/16.
//  Copyright © 2016 faizul hasan. All rights reserved.
//

import UIKit
class FriendCell: BaseCell {
    
// create cercle image view
    let ProfileImageView: UIImageView = {
        let imageView =  UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
  override func setupView() {
        backgroundColor = UIColor.blue
// setup image view into Every base cell
    addSubview(ProfileImageView)
// add constraints means the position of the image
    
    addConstraint(NSLayoutConstraint.constraints(withVisualFormat: "H:[[v0]]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": ProfileImageView]))
    addConstraint(NSLayoutConstraint.constraints(withVisualFormat: "H:[[v0]]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": ProfileImageView]))
    
    
    }
    
}

// disided by Cell
class  BaseCell:UICollectionViewCell {
    override init(frame: CGRect){
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = UIColor.blue
    }

}
