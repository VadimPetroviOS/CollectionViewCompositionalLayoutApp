//
//  MyCollecrionViewCell.swift
//  CollectionViewCompositionalLayoutApp
//
//  Created by Вадим on 07.11.2022.
//

import UIKit

class MyCollecrionViewCell: UICollectionViewCell {

    static let identifier = "MyCollectionViewCell"
    
    private let colorView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(colorView)
        
        let colors: [UIColor] = [
            .green,
            .red,
            .blue,
            .yellow,
            .gray,
            .systemOrange
        ].compactMap({$0})
        colorView.backgroundColor = colors.randomElement()
        contentView.clipsToBounds = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        colorView.frame = contentView.bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
