//
//  CircularView.swift
//  Assessment
//

import UIKit

class CircularView: UIView {

	override func layoutSubviews() {
		super.layoutSubviews()
		if (frame.width != frame.height) {
			NSLog("Ended up with a non-square frame -- so it may not be a circle");
		}
		layer.cornerRadius = frame.width / 2
		layer.masksToBounds = true
	}

}
