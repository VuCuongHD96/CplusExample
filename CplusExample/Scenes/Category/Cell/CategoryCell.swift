//
//  CategoryCell.swift
//  MovieMVVM
//
//  Created by admin on 8/28/21.
//

import UIKit

final class CategoryCell: UITableViewCell {
    
    // MARK: - Outlet
    @IBOutlet private weak var categoryImageView: UIImageView!
    @IBOutlet private weak var categoryTitle: UILabel!
    
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
    func setContent(data: ProductCategory) {
        let name = String(data.name)
        let underLineText = NSAttributedString(string: name, attributes: attributeUnderline)
        categoryTitle.attributedText = underLineText
        categoryImageView.image = UIImage(named: name)
    }
}
