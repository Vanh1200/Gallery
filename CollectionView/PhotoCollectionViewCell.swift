//
//  PhotoCollectionViewCell.swift
//  CollectionView
//
//  Created by Kieu Viet Anh on 03/12/2020.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    static let identifier = "PhotoCollectionViewCell"
    
    var url: String? {
        didSet {
            if let url = URL(string: self.url ?? "") {
                imageView.load(url: url)
            }
        }
    }
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private var gradient: CAGradientLayer?
    private var label: UILabel?
    private var view: UIView?
    private var bg: GradientView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        
        let bg = GradientView()
        contentView.addSubview(bg)
        bg.translatesAutoresizingMaskIntoConstraints = false
        bg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        bg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        bg.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        bg.heightAnchor.constraint(equalToConstant: 20).isActive = true
        let colorTop = UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.3)
        let colorBottom = UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.9)
        bg.topColor = colorTop
        bg.bottomColor = colorBottom
        
//        let images = [
//            UIImage(named: "1"),
//            UIImage(named: "2"),
//            UIImage(named: "3"),
//            UIImage(named: "4"),
//            UIImage(named: "5"),
//            UIImage(named: "6"),
//            UIImage(named: "7"),
//            UIImage(named: "8"),
//            UIImage(named: "9"),
//            UIImage(named: "10"),
//            UIImage(named: "11"),
//        ].compactMap({$0})
        
//        imageView.image = images.randomElement()
//        if let url = URL(string: self.url ?? "") {
//            imageView.load(url: url)
//        }
        
        label = UILabel()
        contentView.addSubview(label!)
        
        label!.textAlignment = .center
        label!.textColor = .white
        label!.backgroundColor = UIColor.clear
        label!.translatesAutoresizingMaskIntoConstraints = false
        label!.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        label!.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        label!.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        label!.text = "Dummy"
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        url = ""
    }
}

@IBDesignable class GradientView: UIView {
    @IBInspectable var topColor: UIColor = UIColor.red {
        didSet {
            setGradient()
        }
    }
    @IBInspectable var bottomColor: UIColor = UIColor.blue {
        didSet {
            setGradient()
        }
    }

    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        setGradient()
    }

    private func setGradient() {
        (layer as! CAGradientLayer).colors = [topColor.cgColor, bottomColor.cgColor]
        (layer as! CAGradientLayer).startPoint = CGPoint(x: 0.5, y: 0.0)
        (layer as! CAGradientLayer).endPoint = CGPoint(x: 0.5, y: 1.0)
        (layer as! CAGradientLayer).locations = [0.0, 1.0]
    }
}

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async {[weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
