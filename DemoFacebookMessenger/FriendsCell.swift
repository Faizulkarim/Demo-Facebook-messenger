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
        imageView.layer.cornerRadius = 34
        imageView.layer.masksToBounds = true
        return imageView
    }()

// create  a varticale line
    let DividerLineView:UIView = {
        let View = UIView()
        View.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        return View
    }()
    
//Create friend name label
    let nameLabe:UILabel = {
        let label = UILabel()
        label.text = "Friend Name"
        label.font = UIFont.systemFont(ofSize: 18)
        
        return label
    }()
// create friens's messege labebel
    let messegeLabel: UILabel = {
        let messege = UILabel()
        messege.text = "Friend's messege and somthing"
        messege.textColor = UIColor.darkGray
        messege.font = UIFont.systemFont(ofSize: 14)
        return messege
    }()
// create a time label
    let timeLabel:UILabel = {
        let time = UILabel()
        time.text = "12.50 pm"
        time.font = UIFont.systemFont(ofSize: 15)
        time.textAlignment = .right
        return time
    }()
// create a has seen label
    let hasSeen: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 9
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    
  override func setupView(){
    
    SetupContainerView()
// setup image  into Every base cell
    addSubview(ProfileImageView)
    addSubview(DividerLineView)
    ProfileImageView.image = UIImage(named: "faizul.png")
    hasSeen.image = UIImage(named: "faizul.png")
// add imger position
    addConstraintsWithFormat(format: "H:|-12-[v0(68)]", views: ProfileImageView)
    addConstraintsWithFormat(format: "V:[v0(68)]", views: ProfileImageView)
// for centering the image
    addConstraints([NSLayoutConstraint.init(item: ProfileImageView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)])
//add verticle line
    addConstraintsWithFormat(format: "H:|-82-[v0]|", views: DividerLineView)
    addConstraintsWithFormat(format: "V:[v0(1)]|", views: DividerLineView)
    }
    
//create container view
    func SetupContainerView(){
        let containerView = UIView()
        
        addSubview(containerView)
        addConstraintsWithFormat(format: "H:|-90-[v0]|", views: containerView)
        addConstraintsWithFormat(format: "V:[v0(50)]", views: containerView)
        addConstraints([NSLayoutConstraint.init(item: containerView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)])
        
//add label in containerView also add messege label in containerView
        containerView.addSubview(nameLabe)
        containerView.addSubview(messegeLabel)
        containerView.addSubview(timeLabel)
        containerView.addSubview(hasSeen)
        addConstraintsWithFormat(format: "H:|[v0][v1(80)]-12-|", views: nameLabe, timeLabel)
        addConstraintsWithFormat(format: "V:|[v0][v1(24)]|", views: nameLabe, messegeLabel)
        addConstraintsWithFormat(format: "H:|[v0][v1(18)]-12-|", views: messegeLabel, hasSeen)
        addConstraintsWithFormat(format: "V:|[v0(20)]", views: timeLabel)
        addConstraintsWithFormat(format: "V:|-35-[v0(18)]", views: hasSeen)
        
    }
    
}

// extend the UIView for add contraints easyly
  extension UIView{
    
    func addConstraintsWithFormat(format: String, views: UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
// config the UIview
   addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
    
}

//work with by Cell
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
