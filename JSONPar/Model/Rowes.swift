//
//  Row.swift
//  JSONPar
//
//  Created by Владимир Осетров on 26.03.2021.
//

import SwiftUI

// Так выглядит одна строка в листе

struct Rowes: View {
    
    var someRow: ItemOfNews
    // подключаем нашу модель
    
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Text(someRow.headline).font(.system (.title2, design: .rounded))
                Spacer()
//                if someRow.isFavorite {
//                                Image(systemName: "heart.fill")
//                                    .foregroundColor(.pink)
//                } else {
//                    Image(systemName: "heart")
//                        .foregroundColor(.gray)
//                }
            }
//            HStack{
//                Text(someRow.).foregroundColor(Color.gray)
//                Spacer()
//                Text(someRow.datetime).foregroundColor(Color.pink)
//                //Spacer()
//            }
        }
    }
}

//struct Row_Previews: PreviewProvider {
//    static var previews: some View {
//        Rowes(someRow: landmarks[1])
//    }
//}
