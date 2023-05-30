//
//  Card.swift
//  DinoAR
//
//  Created by Aninda Putri on 25/05/23.
//

import SwiftUI


struct Card: View {
    
    let animal: Animal
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(animal.photo)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            
            VStack (alignment: .leading, spacing: 0){
                Text(animal.name)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.white)
                    
                
                Text(animal.diet)
                    .font(.system(size: 12, weight: .light))
                    .foregroundColor(.white)
                    .opacity(0.7)
            }
            .padding(.leading, 12)
            .padding(.bottom, 12)
        }
        .frame(width: 163, height: 160)
        .cornerRadius(16)
        
    }
}


struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(animal: Animal(name: "Dog", scientificName: "DOGGO", diet: "Herbivor", size: "10", keyPhysicalFeature: "ya", habitat: "darat", photo: "Tricera", photo2: "Tricera2"))
    }
}
