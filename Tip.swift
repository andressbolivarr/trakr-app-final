//
//  Tip.swift
//  Trakr
//
//  Created by Andres Bolivar on 12/8/21.
//

import Foundation

struct Tip: Decodable{
    let text: String
    let children: [Tip]?
}
