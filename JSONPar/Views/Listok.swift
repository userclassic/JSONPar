//
//  List.swift
//  JSONPar
//
//  Created by Владимир Осетров on 26.03.2021.
//
import Foundation
import SwiftUI
import UIKit

// лист  наших строк из Rowes
/*
var a = true
var c:Color = .red
if a == true {
    c = .green
} else{
    c = .red
}
*/

var buttonColor:Color = .gray
var showFavoritesOnly = true

struct Listok: View {
    @State private var selectet = 0
    @State private var sostoyanya = [true,false]
    var fruits = ["Stocks","Favorite"]
    @State private var sommes = true
    @State private var showFavoritesOnly = true
//    @State private var buttonColor:Color = .gray
    @State private var colorok = Color(.darkGray)
    
    
    
    
    
    var filteredLandmarks: [ModeliN] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
//    var colorok = Color(.darkGray)
    // не могу понять как менять цвет кнопок по отслеживанию состояния
    
    mutating func chanks() {
        if showFavoritesOnly == true {
            self.colorok = Color(.blue)
        }
    }
    
    
    var body: some View {
//        var somees = sostoyanya[selectet]
//        examplesso(bolne: showFavoritesOnly) //функция не работает только enum
        VStack(alignment:.leading){
            
    
            HStack(alignment:.bottom){
                
                Button (action: {
                    showFavoritesOnly = false
                }){
                    Text("Stocks").font(.largeTitle)
                }.buttonStyle(BananaButtonStyle(color: colorok))
                
                Button (action: {
                    showFavoritesOnly = true
                    //self.showFavoritesOnly.toggle()
                }){
                    Text("Favourite").font(.largeTitle).bold()
                }.buttonStyle(BananaButtonStyle(color: colorok))
                
//                $showFavoritesOnly == true {
//                    colorok = Color(.red)
//                }
                
            }.padding(.horizontal, 16)
            
            Picker(selection: $selectet, label:Text("som")){
                ForEach(0..<fruits.count) { indexs in
                    Text(self.fruits[indexs]).tag(indexs)
                }
            }.pickerStyle(SegmentedPickerStyle())
            Text("Selected \(fruits[selectet])")
            
            NavigationView{
                
                List {
                    
                    
                    //                Toggle(isOn: $showFavoritesOnly) {
                    //                    Text("Favorites only")
                    //                }
                    
                    
                    ForEach(filteredLandmarks) { lucky  in
                        NavigationLink(destination: Detailes (someDet: lucky)){
                            Rowes(someRow: lucky)
                        }
                    }
                }
                //.navigationTitle("My JSON List")
            }
        }
 
    }
}

// написать функцию
func examplesso (bolne:Bool){
    if bolne == true {
        buttonColor = .gray
        print("some good")
    }
}
//examplesso(bolne: showFavoritesOnly )

struct Listok_Previews: PreviewProvider {
    static var previews: some View {
        Listok()
    }
}
