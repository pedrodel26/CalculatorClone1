//
//  ButtonCell.swift
//  CalculatorClone
//
//  Created by Pedro Delmondes  on 30/10/2024.
//

import UIKit

class ButtonCell: UICollectionViewCell {
    
    static let identifier = "ButtonCell"
    
    //MARK: - Variables
    private(set) var calculatorButton: CalculatorButton!
    
    //MARK: - UI Components
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 40, weight: .regular)
        label.text = "Error"
        return label
    }()
    
    //MARK: - Configure
    public func configure(with calculatorButton: CalculatorButton) {
        self.calculatorButton = calculatorButton
        
        self.titleLabel.text = calculatorButton.title
        self.backgroundColor = calculatorButton.color
        
        switch calculatorButton {
            
        case .allClear, .plusMinus, .percentage:
            self.titleLabel.textColor = .black
        default:
            self.titleLabel.textColor = .white
        }
        
        self.setupUI()
    }
    
    //MARK: - UI Setup
    private func setupUI() {
        self.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.layer.cornerRadius = self.frame.size.width/2
        
        NSLayoutConstraint.activate([
            self.titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.titleLabel.widthAnchor.constraint(equalTo: self.widthAnchor),
            self.titleLabel.heightAnchor.constraint(equalTo: self.heightAnchor)
        ])
    }
}
