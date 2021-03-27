//
//  BuButten.swift
//  JSONPar
//
//  Created by Владимир Осетров on 26.03.2021.
//

import SwiftUI

struct BananaButtonStyle: ButtonStyle {
    var color: Color
    func makeBody(configuration: Self.Configuration) -> some View {
        BananaButton(configuration: configuration, colorik: color)
    }

    struct BananaButton: View {
        let configuration: BananaButtonStyle.Configuration
        let colorik: Color

        var body: some View {
            return configuration.label
                .foregroundColor(colorik)
//                .padding()
//                .background(RoundedRectangle(cornerRadius: 10).fill(color))
                .scaleEffect(configuration.isPressed ? 0.8: 1)
                .animation(.spring())
        }
    }
}


//struct BuButten: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct BuButten_Previews: PreviewProvider {
//    static var previews: some View {
//        BuButten()
//    }
//}
