//
//  Petition.swift
//  Project20
//
//  Created by Eros M.Lima  on 03/02/2020.
//  Copyright © 2020 Eros M.Lima. All rights reserved.
//
import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}