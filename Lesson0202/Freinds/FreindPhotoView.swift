//
//  FreindPhotoView.swift
//  Lesson0202
//
//  Created by Дмитрий Шикунов on 06.09.2020.
//  Copyright © 2020 Дмитрий Шикунов. All rights reserved.
//

import UIKit

@IBDesignable
class FreindPhotoView: UIView {
    
    let freindPhotoImageView = UIImageView()
    let baseView = UIView()
        
    @IBInspectable
    var shadowColor = UIColor.black.cgColor {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable
    var shadowOffset = CGSize(width: 10, height: 10) {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float = 1.0 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
 
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
//        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        freindPhotoImageView.frame = CGRect(x: 15, y: 15, width: 80, height: 80)
        baseView.frame = CGRect(x: 15, y: 15, width: 80, height: 80)
    }
    
    func setup() {
        backgroundColor = .white
        baseView.backgroundColor = .blue

        freindPhotoImageView.contentMode = .scaleAspectFill
        freindPhotoImageView.clipsToBounds = true
        freindPhotoImageView.layer.masksToBounds = true

        freindPhotoImageView.layer.cornerRadius = 40
        // freindPhotoImageView.layer.borderColor = UIColor.black.cgColor
        freindPhotoImageView.layer.borderWidth = 0
 
        baseView.clipsToBounds = false
        baseView.layer.masksToBounds = false
 
        baseView.layer.cornerRadius = 40
        // baseView.layer.borderColor = UIColor.black.cgColor
        baseView.layer.borderWidth = 0
 
        baseView.layer.shadowColor = shadowColor
        baseView.layer.shadowOffset = shadowOffset
        baseView.layer.shadowOpacity = shadowOpacity
        baseView.layer.shadowRadius = 10
  
        addSubview(baseView)
        addSubview(freindPhotoImageView)
    }
}
