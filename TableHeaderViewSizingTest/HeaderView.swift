//
//  HeaderView.swift
//  TableHeaderViewSizingTest
//
//  Created by Michal Moskala on 01.11.2017.
//  Copyright © 2017 Michal Moskala. All rights reserved.
//

import UIKit

class HeaderView: UIView {
    
    class func createView() -> HeaderView {
        let views = Bundle.main.loadNibNamed("HeaderView", owner: nil, options: nil)
        let view = views?[0] as! HeaderView
        return view
    }
    
    @IBOutlet private weak var titleLabel: UILabel?
    @IBOutlet private weak var subtitleLabel: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel?.text = "Title text"
        subtitleLabel?.text = "Subtitle text Subtitle text Subtitle text Subtitle text Subtitle text Subtitle text Subtitle text Subtitle text Subtitle text Subtitle text Subtitle text Subtitle text Subtitle text Subtitle text"
    }
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        return self.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
    }
}
