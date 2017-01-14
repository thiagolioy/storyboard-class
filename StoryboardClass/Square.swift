//
//  Square.swift
//  StoryboardClass
//
//  Created by Thiago Lioy on 13/01/17.
//  Copyright © 2017 Thiago Lioy. All rights reserved.
//

import UIKit


@IBDesignable

class Square: UIView {
    
    
    
    @IBInspectable
    var cornerRadius: CGFloat = 100
    
    @IBInspectable
    var borderWidth: CGFloat = 0 {
        
        didSet {
            
            layer.borderWidth = borderWidth
            
        }
        
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        
        didSet {
            
            layer.borderColor = borderColor?.cgColor
            
        }
        
    }
    
    
    
    
    
}
