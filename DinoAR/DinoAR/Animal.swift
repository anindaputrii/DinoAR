//
//  Animal.swift
//  DinoAR
//
//  Created by Aninda Putri on 25/05/23.
//


import Foundation

struct Animal: Identifiable {
    let id = UUID()
    let name: String
    let scientificName: String
    let diet: String
    let size: String
    let keyPhysicalFeature: String
    let habitat: String
    let photo: String
    let photo2: String
    
    init(name: String, scientificName: String, diet: String, size: String, keyPhysicalFeature: String, habitat: String, photo: String, photo2: String) {
        self.name = name
        self.scientificName = scientificName
        self.diet = diet
        self.size = size
        self.keyPhysicalFeature = keyPhysicalFeature
        self.habitat = habitat
        self.photo = photo
        self.photo2 = photo2
    }
}
