//
//  GradientSampleView.swift
//  Gradient
//
//  Created by muukii on 8/16/17.
//  Copyright © 2017 eure. All rights reserved.
//

import UIKit

import EasyPeasy
import Hue

class GradientSampleView : UIView {

  let startColor = UIColor(hex: "00CFBD")
  let endColor = UIColor(hex: "00C6D7")

  override func awakeFromNib() {
    super.awakeFromNib()

    let topView = UIView()
    topView.backgroundColor = startColor

    let bottomView = UIView()
    bottomView.backgroundColor = endColor

    let stackView = UIStackView(arrangedSubviews: [
      topView,
      bottomView,
      ])

    stackView.axis = .vertical
    stackView.distribution = .fillEqually

    addSubview(stackView)
    stackView <- Edges()
  }
}

class GradientCGView : UIView {

  let startColor = UIColor(hex: "00CFBD")
  let endColor = UIColor(hex: "00C6D7")

  override func awakeFromNib() {
    super.awakeFromNib()

    let topView = UIView()
    topView.backgroundColor = startColor

    let bottomView = UIView()
    bottomView.backgroundColor = endColor

    let stackView = UIStackView(arrangedSubviews: [
      topView,
      bottomView,
      ])

    stackView.axis = .vertical
    stackView.distribution = .fillEqually

    addSubview(stackView)
    stackView <- Edges()
  }
}

class GradientCAView : UIView {

  let startColor = UIColor(hex: "00CFBD")
  let endColor = UIColor(hex: "00C6D7")

  let gradientLayer = CAGradientLayer()

  override func awakeFromNib() {
    super.awakeFromNib()

    layer.addSublayer(gradientLayer)

    gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
    gradientLayer.locations = [NSNumber(value: 0.35), NSNumber(value: 0.65)]
    gradientLayer.startPoint = CGPoint(x: 0, y: 0)
    gradientLayer.endPoint = CGPoint(x: 1, y: 1)
  }

  override func layoutSublayers(of layer: CALayer) {
    super.layoutSublayers(of: layer)

    gradientLayer.frame = bounds
  }
}
