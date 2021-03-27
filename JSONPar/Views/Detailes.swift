//
//  Detailes.swift
//  JSONPar
//
//  Created by Владимир Осетров on 26.03.2021.
//

import SwiftUI

// Попадаем сюда когда нажимаем на элемент списка

struct Detailes: View {
    
    var someDet: ItemOfNews
    // Подключаем нашу модель
    var body: some View {
        VStack(alignment:.leading, spacing:10){
            Text(someDet.headline).font(.system(size: 28, weight: .bold, design: .rounded))
            Text(someDet.category).font(.subheadline).foregroundColor(Color.accentColor)
            Text(someDet.summary).lineLimit(4)
            Spacer()
        }
    }
}

//struct Detailes_Previews: PreviewProvider {
//    static var previews: some View {
//        Detailes(someDet: landmarks[1])
//    }
//}
