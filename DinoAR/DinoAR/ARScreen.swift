//
//  ARScreen.swift
//  DinoAR
//
//  Created by Aninda Putri on 25/05/23.
//

import SwiftUI

struct ARScreen: View {
    let animal: Animal
    
    var body: some View {
        ARViewContainer(animal: animal)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ARScreen_Previews: PreviewProvider {
    static var previews: some View {
        ARScreen(animal: Animal(name: "", scientificName: "", diet: "", size: "", keyPhysicalFeature: "", habitat: "", photo: "", photo2: "Tricera"))
    }
}
