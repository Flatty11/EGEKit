//
//  ViewController.swift
//  EGEKit
//
//  Created by user on 11.05.2022.
//

import Foundation
import UIKit

final class InitialLoginViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createLayer()
    }
    
    
    private func createLayer() {
        let layer = CAEmitterLayer()
        layer.emitterPosition = CGPoint(x: view.center.x, y: -100)
        
        let colors: [UIColor] = [
            .systemRed,
                .systemBlue,
                .systemOrange,
            .systemGreen,
            .systemPink,
                .systemYellow,
            .systemPurple
        ]
        
        let cells: [CAEmitterCell] = colors.compactMap{
            let cell = CAEmitterCell()
            cell.scale = 0.02
            cell.emissionRange = .pi * 2
            cell.lifetime = 10
            cell.birthRate = 25
            cell.velocity = 75
            cell.color = $0.cgColor
            cell.contents = UIImage(named: "image2")!.cgImage
            return cell
        }
        
        layer.emitterCells = cells
        
        view.layer.insertSublayer(layer, at: 0)
        
    }
}
