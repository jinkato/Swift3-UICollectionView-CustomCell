//
//  MyHeader.swift
//  Custom Cell
//
//  Created by Jin Kato on 5/26/17.
//  Copyright © 2017 Jin Kato. All rights reserved.
//

import UIKit

class MyHeader: UICollectionViewCell{
    
    //MARK: Properties
    
    let myLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "I'm header"
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    //MARK: Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layoutMyLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Layout
    
    fileprivate func layoutMyLabel(){
        addSubview(myLabel)
        myLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        myLabel.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        myLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        myLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
}
