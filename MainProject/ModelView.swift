//
//  ModelView.swift
//  MainProject
//
//  Created by Student08 on 22/08/23.
//

import Foundation

struct song : Hashable{
var id = UUID()
var name: String
var path: String
var pic: String //link
}

struct playlist{
    var name: String
var picMain: String //link
    var songs: [song]
}
