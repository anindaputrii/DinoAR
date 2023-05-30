//
//  ContentView.swift
//  DinoAR
//
//  Created by Aninda Putri on 25/05/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isHome : Bool = false
    
    var body: some View {
        
        if isHome {
            HomeScreen()
        } else {
            ZStack {
                
                Image("DinoOnboarding")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                Color.black.opacity(0.3)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0) {
                    
                    Text("explore real-sized dinosaurs with")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.white)
                    
                    Text("DinoAR")
                        .font(.system(size: 72, weight: .bold))
                        .foregroundColor(.white)
                    
                    Spacer()
                    Button {
                        // <#code#>
                        changeToHome()
                    } label: {
                        Text("Lets Explore!")
                            .foregroundColor(.white)
                            .frame(width: 342, height: 53)
                            .background(Color(red: 0.13, green: 0.62, blue: 0.31))
                            .cornerRadius(10)
                        
                    }
                    
                    
                }
                .padding(.top, 113)
                .padding(.bottom, 66)
                .edgesIgnoringSafeArea(.all)
                
                
            }
        }
    }
        
    private func changeToHome() {
        self.isHome = true
    }
           
}
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

