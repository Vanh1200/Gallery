//
//  ViewController.swift
//  CollectionView
//
//  Created by Kieu Viet Anh on 02/12/2020.
//

import UIKit

class ViewController: UIViewController {
    
    private let collectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout())
    
    private var images = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        initImages()
        collectionView.register(PhotoCollectionViewCell.self, forCellWithReuseIdentifier: PhotoCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        view.addSubview(collectionView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
    
    func initImages() {
        images.append("https://cf.shopee.vn/file/0254aea1b7d9cc4c95435563a4e5fa89")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-30.jpg?v=1586766112957")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-3495.jpg?v=1593490441000")
        images.append("https://aodaitrunghieu.com/wp-content/uploads/2019/07/Vai-ao-dai-hoa-3D-tren-nguc-kieu-moi-AD.jpg")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-23.jpg?v=1586766861037")
        images.append("https://quyennguyen.vn/wp-content/uploads/2020/06/mau-ao-dai-an-hoi-dep-2020-1.jpg")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-8237.jpg?v=1593587945767")
        images.append("https://cf.shopee.vn/file/0254aea1b7d9cc4c95435563a4e5fa89")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-30.jpg?v=1586766112957")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-3495.jpg?v=1593490441000")
        images.append("https://aodaitrunghieu.com/wp-content/uploads/2019/07/Vai-ao-dai-hoa-3D-tren-nguc-kieu-moi-AD.jpg")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-23.jpg?v=1586766861037")
        images.append("https://quyennguyen.vn/wp-content/uploads/2020/06/mau-ao-dai-an-hoi-dep-2020-1.jpg")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-8237.jpg?v=1593587945767")
        images.append("https://cf.shopee.vn/file/0254aea1b7d9cc4c95435563a4e5fa89")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-30.jpg?v=1586766112957")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-3495.jpg?v=1593490441000")
        images.append("https://aodaitrunghieu.com/wp-content/uploads/2019/07/Vai-ao-dai-hoa-3D-tren-nguc-kieu-moi-AD.jpg")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-23.jpg?v=1586766861037")
        images.append("https://quyennguyen.vn/wp-content/uploads/2020/06/mau-ao-dai-an-hoi-dep-2020-1.jpg")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-8237.jpg?v=1593587945767")
        images.append("https://cf.shopee.vn/file/0254aea1b7d9cc4c95435563a4e5fa89")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-30.jpg?v=1586766112957")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-3495.jpg?v=1593490441000")
        images.append("https://aodaitrunghieu.com/wp-content/uploads/2019/07/Vai-ao-dai-hoa-3D-tren-nguc-kieu-moi-AD.jpg")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-23.jpg?v=1586766861037")
        images.append("https://quyennguyen.vn/wp-content/uploads/2020/06/mau-ao-dai-an-hoi-dep-2020-1.jpg")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-8237.jpg?v=1593587945767")
        images.append("https://cf.shopee.vn/file/0254aea1b7d9cc4c95435563a4e5fa89")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-30.jpg?v=1586766112957")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-3495.jpg?v=1593490441000")
        images.append("https://aodaitrunghieu.com/wp-content/uploads/2019/07/Vai-ao-dai-hoa-3D-tren-nguc-kieu-moi-AD.jpg")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-23.jpg?v=1586766861037")
        images.append("https://quyennguyen.vn/wp-content/uploads/2020/06/mau-ao-dai-an-hoi-dep-2020-1.jpg")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-8237.jpg?v=1593587945767")
        images.append("https://cf.shopee.vn/file/0254aea1b7d9cc4c95435563a4e5fa89")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-30.jpg?v=1586766112957")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-3495.jpg?v=1593490441000")
        images.append("https://aodaitrunghieu.com/wp-content/uploads/2019/07/Vai-ao-dai-hoa-3D-tren-nguc-kieu-moi-AD.jpg")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-23.jpg?v=1586766861037")
        images.append("https://quyennguyen.vn/wp-content/uploads/2020/06/mau-ao-dai-an-hoi-dep-2020-1.jpg")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-8237.jpg?v=1593587945767")
        images.append("https://cf.shopee.vn/file/0254aea1b7d9cc4c95435563a4e5fa89")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-30.jpg?v=1586766112957")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-3495.jpg?v=1593490441000")
        images.append("https://aodaitrunghieu.com/wp-content/uploads/2019/07/Vai-ao-dai-hoa-3D-tren-nguc-kieu-moi-AD.jpg")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-23.jpg?v=1586766861037")
        images.append("https://quyennguyen.vn/wp-content/uploads/2020/06/mau-ao-dai-an-hoi-dep-2020-1.jpg")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-8237.jpg?v=1593587945767")
        images.append("https://cf.shopee.vn/file/0254aea1b7d9cc4c95435563a4e5fa89")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-30.jpg?v=1586766112957")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-3495.jpg?v=1593490441000")
        images.append("https://aodaitrunghieu.com/wp-content/uploads/2019/07/Vai-ao-dai-hoa-3D-tren-nguc-kieu-moi-AD.jpg")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-23.jpg?v=1586766861037")
        images.append("https://quyennguyen.vn/wp-content/uploads/2020/06/mau-ao-dai-an-hoi-dep-2020-1.jpg")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-8237.jpg?v=1593587945767")
        images.append("https://cf.shopee.vn/file/0254aea1b7d9cc4c95435563a4e5fa89")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-30.jpg?v=1586766112957")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-3495.jpg?v=1593490441000")
        images.append("https://aodaitrunghieu.com/wp-content/uploads/2019/07/Vai-ao-dai-hoa-3D-tren-nguc-kieu-moi-AD.jpg")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-23.jpg?v=1586766861037")
        images.append("https://quyennguyen.vn/wp-content/uploads/2020/06/mau-ao-dai-an-hoi-dep-2020-1.jpg")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-8237.jpg?v=1593587945767")
        images.append("https://cf.shopee.vn/file/0254aea1b7d9cc4c95435563a4e5fa89")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-30.jpg?v=1586766112957")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-3495.jpg?v=1593490441000")
        images.append("https://aodaitrunghieu.com/wp-content/uploads/2019/07/Vai-ao-dai-hoa-3D-tren-nguc-kieu-moi-AD.jpg")
        images.append("https://bizweb.dktcdn.net/100/236/196/products/ao-dai-in-3d-23.jpg?v=1586766861037")
        images.append("https://quyennguyen.vn/wp-content/uploads/2020/06/mau-ao-dai-an-hoi-dep-2020-1.jpg")
        images.append("https://bizweb.dktcdn.net/100/386/329/products/dsc-8237.jpg?v=1593587945767")
    }
}

extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoCollectionViewCell.identifier, for: indexPath)
        (cell as! PhotoCollectionViewCell).url = images[indexPath.row]
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(
            width: view.frame.width / 3 - 2,
            height: view.frame.width / 3 - 2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    }
}
