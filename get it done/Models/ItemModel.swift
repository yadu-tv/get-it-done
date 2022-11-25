//
//  ItemModel.swift
//  to do
//
//  Created by Yadu Krishnan on 24/07/22.
//

import Foundation

//Immutable struct, all are "let", cannot use "var" and cant be changed
struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
    
}
