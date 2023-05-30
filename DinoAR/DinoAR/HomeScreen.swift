//
//  HomeScreen.swift
//  DinoAR
//
//  Created by Aninda Putri on 25/05/23.
//

import SwiftUI

struct HomeScreen: View {
    let columns = [GridItem(), GridItem()]
    @State var animalDatas: [Animal] = []
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 8) {
                Text("Hello, Explorer!")
                    .font(.system(size: 16, weight: .regular))
                    .foregroundColor(.black)
                
                Text("What giant reptile would you like to get to know more?")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.black)
                    .fixedSize(horizontal: false, vertical: true)
                
                Spacer().frame(height: 32)
                LazyVGrid(columns: columns) {
                    ForEach(animalDatas) { animal in
                        NavigationLink {
                            CardDetail(animal: animal)
                        } label: {
                            Card(animal: animal)
                        }
                    }
                }
                .background(Color.white)
//                VStack (spacing: 16) {
//                    HStack {
//                        Card()
//                        Card()
//                    }
//
//                    HStack {
//                        Card()
//                        Card()
//                    }
//
//                    HStack {
//                        Card()
//                        Card()
//                    }
//                }
                Spacer().frame(height: 180)
            }
            .padding(.top, 113)
            .padding(.horizontal, 24)
            .background(Color.white)
            .edgesIgnoringSafeArea(.all)
            

        }
        .onAppear {
            animalDatas.append(Animal(name: "Mosasaurus", scientificName: "Mosasaurus hoffmannii", diet: "Carnivore", size: "50", keyPhysicalFeature: "Streamlined body with powerful jaws and sharp teeth", habitat: "Aquatic environments, including oceans and seas", photo: "Mosa", photo2: "Mosa2"))
            animalDatas.append(Animal(name: "Triceratops", scientificName: "Triceratops horridus", diet: "Herbivore", size: "26 to 30", keyPhysicalFeature: "Large, bony frill on the skull and three horns", habitat: "Terrestrial environments, such as forests and plains", photo: "Tricera", photo2: "Tricera2"))
            animalDatas.append(Animal(name: "Spinosaurus", scientificName: "Spinosaurus aegyptiacus", diet: "Carnivore", size: "40 to 50", keyPhysicalFeature: "Distinctive sail-like structure on its back", habitat: "Lived near water bodies like rivers and lakes", photo: "Spino", photo2: "Spino2"))
            animalDatas.append(Animal(name: "Mamenchisaurus", scientificName: "Mamenchisaurus sinocanadorum", diet: "Herbivore", size: "Approximately 60 to 100 feet long", keyPhysicalFeature: "Extremely long neck and tail", habitat: "Terrestrial environments, including forests and plains", photo: "Mamenchi", photo2: "Mamenchi2"))
            animalDatas.append(Animal(name: "Velociraptor", scientificName: "Velociraptor mongoliensis", diet: "Carnivore", size: "6", keyPhysicalFeature: "Sleek, lightweight body with a long, curved claw on each foot, and a sharp, tooth-filled snout", habitat: "Lived in diverse environments ranging from forests to deserts", photo: "Velo", photo2: "Velo2"))
            animalDatas.append(Animal(name: "Pterasaurus", scientificName: "Pteranodon longiceps", diet: "Carnivore", size: "20 (wingspan)", keyPhysicalFeature: "Large crest on the back of its head, long pointed beak, and wings adapted for flight", habitat: "Primarily inhabited coastal regions and near bodies of water", photo: "Ptera", photo2: "Ptera2"))
        }

    }
    
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
