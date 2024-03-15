//
//  CategoryCell.swift
//  MovieMVVM
//
//  Created by admin on 8/28/21.
//

import UIKit

final class CategoryCell: UITableViewCell {
    
    // MARK: - Outlet
    @IBOutlet private weak var genreImageView: UIImageView!
    @IBOutlet private weak var genreTitle: UILabel!
    
    // MARK: - Define
    typealias Attribute = [NSAttributedString.Key: Any]
    
    // MARK: - Property
    let attributeUnderline: Attribute = [.underlineStyle: 1]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    // MARK: - View
    private func setupView() {
        selectionStyle = .none
    }
    
    // MARK: - Data
    func setContent(data: String) {
        let underLineText = NSAttributedString(string: data, attributes: attributeUnderline)
        genreTitle.attributedText = underLineText
        genreImageView.image = UIImage(named: data)
    }
}
