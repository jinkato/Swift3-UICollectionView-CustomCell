//
//  MyCell.swift
//  Custom Cell
//
//  Created by Jin Kato on 5/26/17.
//  Copyright © 2017 Jin Kato. All rights reserved.
//

import UIKit

class MyCell: UICollectionViewCell{
    
    //MARK: Properties
    
    var user:User? {
        didSet{
            guard let user = self.user else { return }
            firstLabel.text = user.first
            lastLabel.text = user.last
        }
    }
    let firstLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    let lastLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    //MARK: Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layoutFirstLabel()
        layoutLastLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Layout
    
    fileprivate func layoutFirstLabel(){
        addSubview(firstLabel)
        firstLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        firstLabel.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        firstLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        firstLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
    }
    fileprivate func layoutLastLabel(){
        addSubview(lastLabel)
        lastLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        lastLabel.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        lastLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        lastLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
}
