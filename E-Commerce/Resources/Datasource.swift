//
//  ClothesData.swift
//  HOMME the store
//
//  Created by EltonR on 21.3.23.
//

import Foundation

class Datasource {
    // Products
    var allProducts: [ProductModel] = [
        ProductModel(photo: "BBC-Track", brand: .bbc, name: "BBC - TRACK PANTS", description: "Billionaire Boys Club Spring '23 - Designed to be worn alongside the zip through track top, these track pants present a straight leg fitting with full-length woven branded taping.", size: ["S", "M", "L", "XL"], price: "$185.00", photos: ["BBC-Track"], brandTitleLabel: "BILLIONARE BOYS CLUB", productLabel: "Track Pants - Blue"),
        ProductModel(photo: "BBC-Track2", brand: .bbc, name: "BBC - ZIP THROUGH TRACK TOP", description: "Billionaire Boys Club Spring '23 - This zip through track top is crafted with a felt Astro helmet logo patch at front and woven branded tape on sleeves.", size: ["S", "M", "L", "XL"], price: "$225.00", photos: ["BBC-Track2"], brandTitleLabel: "BILLIONARE BOYS CLUB", productLabel: "Zip Through - Blue"),
        ProductModel(photo: "BBC-BaseballCollar", brand: .bbc, name: "BBC - Baseball jacket", description: "ICECREAM Spring '23 - Baseball Collared Bomber Jacket is designed with printed and embroidered artworks on the front and back of the jacket, finished with an half zip con the collar.", size: ["S", "M", "L", "XL"], price: "$325.00", photos: ["BBC-BaseballCollar"], brandTitleLabel: "BILLIONARE BOYS CLUB", productLabel: "Baseball Collared"),
        ProductModel(photo: "BBC-CamoVest", brand: .bbc, name: "BBC - Camo vest", description: "Billionaire Boys Club Spring '23 - This lightweight vest features a rubber Astro chest logo and it is finished with a zip front closure and two pockets.", size: ["S", "M", "L", "XL"], price: "$245.00", photos: ["BBC-CamoVest"], brandTitleLabel: "BILLIONARE BOYS CLUB", productLabel: "Camo Lightwieght Vest"),
        ProductModel(photo: "BBC-ConeTshirt", brand: .bbc, name: "BBC - Cone T-Shirt", description: "ICECREAM Spring '23 - 100% Cotton T-shirt with the ICECREAM cone graphic print at chest.", size: ["S", "M", "L", "XL"], price: "$40.00", photos: ["BBC-ConeTshirt"], brandTitleLabel: "BILLIONARE BOYS CLUB", productLabel: "Cone T-Shirt | White"),
        ProductModel(photo: "BBC-OrangeHoodie", brand: .bbc, name: "BBC - Orange Hoodie", description: "Billionaire Boys Club Spring '23 - The Cursive Logo Popover Hood features the Billionaire Boys Club logo at chest. It comes with a pouch pocket and self-lined hood.", size: ["S", "M", "L", "XL"], price: "$185.00", photos: ["BBC-OrangeHoodie"], brandTitleLabel: "BILLIONARE BOYS CLUB", productLabel: "Cursive Hoodie Popover hood - Orange"),
        ProductModel(photo: "BBC-RainJacket", brand: .bbc, name: "BBC - Rain Jacket", description: "Billionaire Boys Club Spring '23 - Hooded Rain Jacket with waterproof outer; it presents a rubber logo at front and the embroidered Billionaire Boys Club lettering at the collar.", size: ["XS", "S", "M", "L", "XL"], price: "$325.00", photos: ["BBC-RainJacket"], brandTitleLabel: "BILLIONARE BOYS CLUB", productLabel: "Hooded Rain Jacket - Gray"),
        ProductModel(photo: "CDG-Converse", brand: .cdg, name: "CDG - PLAY CONVERSE", description: "Low top, Lace up fastening, Printed red heart, Metal eyelets, Rubber toe cap ", size: ["40", "41", "42", "43"], price: "$140.00", photos: ["CDG-Converse", "CDG-Converse2"], brandTitleLabel: "COMME DES GARCONS", productLabel: "Play Converse"),
        ProductModel(photo: "CDG-Hoodie", brand: .cdg, name: "CDG - SWEATSHIRT", description: "We recommend ordering one size up from your usual size.", size: ["S", "M", "L", "XL"], price: "$169.00", photos: ["CDG-Hoodie"], brandTitleLabel: "COMME DES GARCONS", productLabel: "Sweatshirt"),
        ProductModel(photo: "CDG-Zipup", brand: .cdg, name: "CDG - Zip UP", description: "We recommend ordering one size up from your usual size.", size: ["S", "M", "L", "XL"], price: "$193.00", photos: ["CDG-Zipup", "CDG-Zipup2"], brandTitleLabel: "COMME DES GARCONS", productLabel: "Zip Up"),
        ProductModel(photo: "Kenzo-Knit", brand: .kenzo, name: "Kenzo - ELEPHANT JUMPER", description: "Kenzo Elephant Wool Jumper in cyan color", size: ["S/M", "L/XL"], price: "$550.00", photos: ["Kenzo-Knit", "Kenzo-Knit2"], brandTitleLabel: "KENZO", productLabel: "Elephant Jumper"),
        ProductModel(photo: "Kenzo-Shirt", brand: .kenzo, name: "Kenzo - ELEPHANT SHIRT", description: "Kenzo Elephant Shirt in midnight blue", size: ["S", "M", "L", "XL"], price: "$590.00", photos: ["Kenzo-Shirt", "Kenzo-Shirt2"], brandTitleLabel: "KENZO", productLabel: "Elephant Shirt"),
        ProductModel(photo: "Kenzo-Tshr", brand: .kenzo, name: "Kenzo - Pixel", description: "Kezno Pixel - T shirt in Off White", size: ["S", "M", "L", "XL"], price: "$190.00", photos: ["Kenzo-Tshr"], brandTitleLabel: "KENZO", productLabel: "Pixel T-Shirt"),
        ProductModel(photo: "Kenzo-BlackKnit", brand: .kenzo, name: "Kenzo - Elephant Varsity Carding", description: "Kenzo black carding", size: ["S", "M", "L", "XL"], price: "$390.00", photos: ["Kenzo-BlackKnit", "Kenzo-BlackKnit"], brandTitleLabel: "KENZO", productLabel: "ELEPHANT 'VARSITY JUNGLE' CARDIGAN"),
        ProductModel(photo: "Kenzo-Varsity", brand: .kenzo, name: "Kenzo - Tiger Varisty", description: "Kenzo Tiger", size: ["S", "M", "L", "XL"], price: "$1500.00", photos: ["Kenzo-Varisty", "Kenzo-Varsity"], brandTitleLabel: "KENZO", productLabel: "Wool and Leather 'Tiger Varsity' Jacker"),
        ProductModel(photo: "Kenzo-Bomber", brand: .kenzo, name: "Kenzo - Elephant Bomber", description: "Kenzo Elephant Bomber jacket misty gray", size: ["S", "M", "L", "XL"], price: "$990.00", photos: ["Kenzo-Bomber", "Kenzo-Bomber2"], brandTitleLabel: "KENZO", productLabel: "Elephant Bomber Jacket"),
        ProductModel(photo: "Kenzo-ElephantShirt", brand: .kenzo, name: "Kenzo - Elephant Tshirt", description: "Elephant Oversized T-shirt ", size: ["S", "M", "L", "XL"], price: "$150.00", photos: ["Kenzo-ElephantShirt"], brandTitleLabel: "KENZO", productLabel: "Elephant 'Varsity Jungle' T-Shirt"),
        ProductModel(photo: "Kenzo-Vest", brand: .kenzo, name: "Kenzo - Varsity Vest", description: "Kenzo black tech vest", size: ["S", "M", "L", "XL"], price: "$790.00", photos: ["Kezno-Vest", "Kenzo-Vest2"], brandTitleLabel: "KENZO", productLabel: "'Varsity' Technical Bodywarmer"),
        ProductModel(photo: "Pleasures-Jacket", brand: .pleasures, name: "Pleasures Coach", description: "Pleasures Coach Jacket in Off White", size: ["S", "M", "L", "XL"], price: "$125.00", photos: ["Pleasures-Jacket"], brandTitleLabel: "PLEASURES", productLabel: "Coach Jacket"),
        ProductModel(photo: "Pleasures-Pants", brand: .pleasures, name: "Pleasures Pants", description: "Black Pleasures Pants in washed black colorway", size: ["S", "M", "L", "XL"], price: "$130.00", photos: ["Pleasures-Pants", "Pleasures-Pants2"], brandTitleLabel: "PLEASURES", productLabel: "Pants"),
        ProductModel(photo: "Pleasures-Tshirt", brand: .pleasures, name: "Pleasures Twitch Heavyweight", description: "Pleasures Twitch Heavyweight Whitee T-shirt", size: ["S", "M", "L", "XL"], price: "$54.00", photos: ["Pleasures-Tshirt"], brandTitleLabel: "PLEASURES", productLabel: "T-Shirt"),
        ProductModel(photo: "Represent-Hoodie", brand: .represent, name: "Represent Owners Club", description: "Cobalt blue hoodie with a slightly oversized fit, crafted from a heavyweight jersey cotton.", size: ["S", "M", "L", "XL"], price: "$245.00", photos:["Represent-Hoodie", "Represent-Hoodie2"],brandTitleLabel: "REPRESENT", productLabel: "Owners Club Hoodie Blue"),
        ProductModel(photo: "Represent-Jacket", brand: .represent, name: "Represent Ivery Jacket", description: "Represent Varsity Jacket", size: ["S", "M", "L", "XL"], price: "$325.00", photos: ["Represent-Jacket", "Represent-Jacket2"], brandTitleLabel: "REPRESENT", productLabel: "Ivery Jacket"),
        ProductModel(photo: "Vetements-Knit", brand: .vetements, name: "Vetements Logo Jumper", description: "logo-print long-sleeve jumper", size: ["S", "M", "L", "XL"], price: "$1568.00", photos: ["Vetements-Knit"], brandTitleLabel: "VETEMENTS", productLabel: "Logo Jumper")
    ]
    
    // Brands
    var brandModel: [BrandModel] = [BrandModel(brandPhoto: "kenzo", brandName: "Kenzo", brand: .kenzo),
                                    BrandModel(brandPhoto: "bbc", brandName: "Billionare Boys Club", brand: .bbc),
                                    BrandModel(brandPhoto: "vetements", brandName: "Vetements", brand: .vetements),
                                    BrandModel(brandPhoto: "cdg", brandName: "Commes des Garcons", brand: .cdg),
                                    BrandModel(brandPhoto: "pleasures", brandName: "Pleasures", brand: .pleasures),
                                    BrandModel(brandPhoto: "represent", brandName: "Represent", brand: .represent),]
    
    // Cart
    var cartModel: [CartModel] = []
    
    // Store photos in ScrollView on MapVC
    var storePhotosModel: [StorePhotosModel] = [StorePhotosModel(photo: "StorePhoto1"),
                                                StorePhotosModel(photo: "StorePhoto2"),
                                                StorePhotosModel(photo: "StorePhoto3")]
    
    var promotionModel: [PromotionModel] = [PromotionModel(photo: "Ad 2"), PromotionModel(photo: "Ad 3", segue: "")]
    
    // Get products functions
    func getProducts(brand: ProductBrand) -> [ProductModel] {
        return allProducts.filter { productModel in
            productModel.brand == brand
        }
    }
    
    func getPopularBrands() -> [ProductModel] {
        return allProducts.pick(4)
    }
}
