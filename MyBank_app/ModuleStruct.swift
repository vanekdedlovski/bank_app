//
//  ModuleStruct.swift
//  MyBank_app
//
//  Created by bnkwsr2 on 28.02.2022.
//

import Foundation

struct Authln : Codable {
    let createdAt : String
    let firstName  : String
    let lastName :  String
    let avatar : String
    let password : Int
    let id  : String
}

struct cartUser :Codable {
    let createdAt : String
    let number : String
    let CVV : String
    let date : String
    let balance : String
    let color  : String
    let cartId : String
}
