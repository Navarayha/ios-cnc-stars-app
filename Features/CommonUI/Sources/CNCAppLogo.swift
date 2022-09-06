//
//  CNCAppLogo.swift
//  CommonUI
//
//  Created by Ринат Ахунов on 06.09.2022.
//  Copyright © 2022 Coffe&Code. All rights reserved.
//

import Foundation
import UIKit

public class CNCAppLogo: UIImageView {
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override init(image: UIImage?) {
        super.init(image: image)
        configure()
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    public override func layoutSubviews() {
        super.layoutSubviews()
        self.clipsToBounds = true
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
    }
}


