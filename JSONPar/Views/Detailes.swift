//
//  Detailes.swift
//  JSONPar
//
//  Created by Владимир Осетров on 26.03.2021.
//

import SwiftUI

// Попадаем сюда когда нажимаем на элемент списка

struct Detailes: View {
    
    var someDet: ModeliN
    // Подключаем нашу модель
    var body: some View {
        VStack(alignment:.leading, spacing:10){
            Text(someDet.name).font(.system(size: 28, weight: .bold, design: .rounded))
            Text(someDet.state).font(.subheadline).foregroundColor(Color.accentColor)
            Text(someDet.description).lineLimit(4)
            Spacer()
        }
    }
}

struct Detailes_Previews: PreviewProvider {
    static var previews: some View {
        Detailes(someDet: landmarks[1])
    }
}
