//
//  ARPage.swift
//  DinoAR
//
//  Created by Aninda Putri on 25/05/23.
//


import SwiftUI
import RealityKit

struct ARViewContainer: UIViewRepresentable {
    var animal: Animal
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        var boxAnchor: RealityKit.HasAnchoring
        
        if (animal.name == "Mosasaurus") {
            boxAnchor = try! Dino3D.loadMeso()
        } else if(animal.name == "Triceratops") {
            boxAnchor = try! Dino3D.loadTricera()
        } else if(animal.name == "Spinosaurus") {
            boxAnchor = try! Dino3D.loadSpino()
        } else if(animal.name == "Mamenchisaurus") {
            boxAnchor = try! Dino3D.loadMamenchi()
        } else if(animal.name == "Pterasaurus") {
            boxAnchor = try! Dino3D.loadPtera()
        } else if(animal.name == "Velociraptor") {
            boxAnchor = try! Dino3D.loadVelo()
        } else{
            boxAnchor = try! Dino3D.loadBox()
        }
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
