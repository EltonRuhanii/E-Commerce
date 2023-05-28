//
//  File.swift
//  HOMME the store
//
//  Created by EltonR on 21.3.23.
//

import Foundation
import UIKit

// different brand cases
enum ProductBrand: String {
    case bbc = "BBC"
    case cdg = "CDG"
    case kenzo = "KENZO"
    case pleasures = "PLEASURES"
    case represent = "REPRESENT"
    case vetements = "VETEMENTS"
    case all = "all"
}

// Coming soon
enum ProductType: String {
    case tshirt = "tshirt"
    case pants = "pants"
    case jacket = "jacket"
    case shoes = "shoes"
}

// Product information will be filled by this model
struct ProductModel {
    var photo: String
    var brand: ProductBrand
    var name: String
    var description: String
    var size: [String]
    var price: String
    var photos: [String]
    var brandTitleLabel: String
    var productLabel: String
}

// Brand collectionView on HomeScreen will be filled by this model
struct BrandModel {
    var brandPhoto: String?
    var brandName: String?
    var brand: ProductBrand
}

// Coming soon
struct CartModel{
    var productPhoto: String?
    var brandTitleLabel: String?
    var productLabel: String?
    var size: String?
    var price: String?
    var quantity: Int
}

// Promotion on home screen will be filled by this model
struct PromotionModel {
    var photo: String?
    var segue: String?
}

// Store photos in mapView will be filled by this
struct StorePhotosModel {
    var photo: String
}
