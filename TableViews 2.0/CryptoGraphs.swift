//
//  CryptoGraphs.swift
//  TableViews 2.0
//
//  Created by Reuben Simphiwe Kuse on 2023/03/20.
//

import UIKit

class CryptoGraphs: UITableViewCell {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Cardano"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.text = "2.00% APY..."
        label.textColor = .black
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var currencyLabel: UILabel = {
        let label = UILabel()
        label.text = "ZAR 6.36"
        label.textColor = .black
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var percentageLabel: UILabel = {
        let label = UILabel()
        label.text = "↗︎2.80%"
        label.textColor = .systemGreen
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var cardanoLogoImage: UIImageView = {
     let imageView = UIImageView()
     imageView.image = UIImage(named: "cardano_logo")
     imageView.layer.cornerRadius = 20
     imageView.contentMode = .scaleAspectFill
     //imageView.backgroundColor = .darkGray
     imageView.clipsToBounds = true
     imageView.translatesAutoresizingMaskIntoConstraints = false
     return imageView
    }()
    
    lazy var graphImage: UIImageView = {
           let imageView = UIImageView()
           imageView.image = UIImage(named: "line_example4")
           //imageView.layer.cornerRadius = 10
           imageView.contentMode = .scaleAspectFill
           //imageView.backgroundColor = .darkGray
           imageView.clipsToBounds = true
           imageView.translatesAutoresizingMaskIntoConstraints = false
           return imageView
    
        }()

    // StackViews
    lazy var titleDetailLabelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, detailLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 10.0
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var currencyPercentageLabelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [currencyLabel,
                                                       percentageLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 10.0
        stackView.alignment = .trailing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        
        addSubview(titleDetailLabelStackView)
        addSubview(currencyPercentageLabelStackView)
        addSubview(cardanoLogoImage)
        addSubview(graphImage)
        

        titleDetailLabelStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleDetailLabelStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 80).isActive = true
        titleDetailLabelStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -80).isActive = true

        currencyPercentageLabelStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        currencyPercentageLabelStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        currencyPercentageLabelStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -30).isActive = true
        
        currencyLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        cardanoLogoImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        cardanoLogoImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        cardanoLogoImage.leftAnchor.constraint(equalTo:titleDetailLabelStackView.leftAnchor, constant: -65).isActive = true
        cardanoLogoImage.topAnchor.constraint(equalTo: titleDetailLabelStackView.topAnchor, constant: 0).isActive = true
        
        graphImage.heightAnchor.constraint(equalToConstant: 60).isActive = true
        graphImage.widthAnchor.constraint(equalToConstant: 60).isActive = true
        graphImage.rightAnchor.constraint(equalTo:titleDetailLabelStackView.leftAnchor, constant: 200).isActive = true
        graphImage.topAnchor.constraint(equalTo: titleDetailLabelStackView.topAnchor, constant: 0).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}
