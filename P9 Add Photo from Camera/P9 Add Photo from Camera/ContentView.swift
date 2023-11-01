//
//  ContentView.swift
//  P9 Add Photo from Camera
//
//  Created by Oğulcan Baytimur on 31/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var image = UIImage()
    @State private var showSheet = false
    @State private var imageSelected = false
    @State private var caption = ""
    @State private var size = 300.0
    
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                ZStack{
                    Image(uiImage: self.image)
                        .resizable()
                        .frame(width: size, height: size)
                        .background(Color.gray.opacity(0.5))
                        .cornerRadius(30)
                        .onTapGesture {
                            showSheet = true
                            imageSelected = true
                        }
                    if image.cgImage == nil {
                        Text("Import Image")
                            .font(.system(size: size/6))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: size)
                    }
                }
                HStack{
                    TextField("Add a caption", text: $caption)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .bold()
                }
                Spacer()
                Slider(value: $size, in: 100...350, step: 10)
            }
            .padding(.horizontal, 20)
            .sheet(isPresented: $showSheet) {
                    ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
            }
            .toolbar{
                ToolbarItem{
                    Button("Remove Photo"){
                        image = UIImage()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
