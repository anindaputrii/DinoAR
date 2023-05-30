//
//  CardDetail.swift
//  DinoAR
//
//  Created by Aninda Putri on 25/05/23.
//

import SwiftUI

struct CardDetail: View {
    let animal: Animal
    @State var isAR = true
    var body: some View {
        HStack {
            HStack {
                ZStack {
                    Image(animal.photo2)
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                            .edgesIgnoringSafeArea(.all)
                
                        VStack {
                            Spacer()
                            
                            ZStack (alignment: .top){
                                Rectangle()
                                    .fill(Color.white)
                                    .frame(width: UIScreen.main.bounds.width, height: 416)
                                    .cornerRadius(10)
                                
                                VStack (spacing: 32) {
                                    
                                    HStack{
                                        VStack (alignment: .leading){
                                            Text(animal.name)
                                                .font(.system(size: 24, weight: .semibold))
                                                .foregroundColor(.black)
                                            
                                            Text(animal.scientificName)
                                                .font(.system(size: 16, weight: .regular))
                                                .foregroundColor(.black)
                                                .italic()
                                                .opacity(0.5)
                                            
                                        }
                                        Spacer()
                                    }
                                    HStack (alignment: .top){
                                        HStack{
                                            VStack (alignment: .leading){
                                                Text("Diet")
                                                    .font(.system(size: 14, weight: .regular))
                                                    .foregroundColor(.black)
                                                    .opacity(0.5)
                                                
                                                Text(animal.diet)
                                                    .font(.system(size: 14, weight: .medium))
                                                    .foregroundColor(.black)
                                            }
                                            Spacer()
                                        }
                                        .frame(width: 163)
                                        
                                        Spacer()
                                        
                                        HStack{
                                            VStack (alignment: .leading){
                                                Text("Size")
                                                    .font(.system(size: 14, weight: .regular))
                                                    .foregroundColor(.black)
                                                    .opacity(0.5)
                                                
                                                Text("± \(animal.size) feet long")
                                                    .font(.system(size: 14, weight: .medium))
                                                    .foregroundColor(.black)
                                            }
                                            Spacer()
                                        }
                                        .frame(width: 163)
                                        
                                        
                                    }
                                    
                                    HStack (alignment: .top){
                                        HStack{
                                            VStack (alignment: .leading){
                                                Text("Key Physical Feature")
                                                    .font(.system(size: 14, weight: .regular))
                                                    .foregroundColor(.black)
                                                    .opacity(0.5)
                                                
                                                Text(animal.keyPhysicalFeature)
                                                    .font(.system(size: 14, weight: .medium))
                                                    .foregroundColor(.black)
                                            }
                                            Spacer()
                                        }
                                        .frame(width: 163)
                                        
                                        Spacer()
                                        
                                        HStack{
                                            VStack (alignment: .leading){
                                                Text("Habitat")
                                                    .font(.system(size: 14, weight: .regular))
                                                    .foregroundColor(.black)
                                                    .opacity(0.5)
                                                
                                                Text(animal.habitat)
                                                    .font(.system(size: 14, weight: .medium))
                                                    .foregroundColor(.black)
                                            }
                                            Spacer()
                                        }
                                        .frame(width: 163)
                                    }
                 
                                    NavigationLink(destination: ARScreen(animal: animal)) {
                                        HStack{
                                            Image(systemName: "arkit")
                                                .foregroundColor(.white)
                                            Text("View Real-Sized in AR")
                                                .foregroundColor(.white)
                                                .bold()
                                        }
                                        .frame(width: 342, height: 53)
                                        .background(Color(red: 0.13, green: 0.62, blue: 0.31))
                                        .cornerRadius(10)
                                    }
                                    .padding(.top)
                                    

                                    
                                }
                                .padding(24)
                                .frame(maxWidth: .infinity)

                                }

                        }
                        .edgesIgnoringSafeArea(.all)
   
                }
            }
        }
        }
    }

struct CardDetail_Previews: PreviewProvider {
    static var previews: some View {
        CardDetail(animal: Animal(name: "Pteranodon", scientificName: "Pteranodon longiceps", diet: "Carnivore", size: "20 wingspan", keyPhysicalFeature: "Large crest on the back of its hear, long pointed beak, and wings adapted for fight", habitat: "Primarily inhabited coastal regions and near bodies of water", photo: "Ptera", photo2: "Ptera2"))
    }
}
