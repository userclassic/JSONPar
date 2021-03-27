//
//  StockView.swift
//  JSONPar
//
//  Created by Владимир Осетров on 27.03.2021.
//

import SwiftUI



struct StockItem: View {
    var body: some View {
        
        HStack(spacing: 4){
            Image(systemName: "applelogo")
                .font(.largeTitle)
                .frame(width: 52, height: 52, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.green)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                //.padding(8)
                
            VStack(alignment: .leading){
                HStack(spacing: 4){
                    Text("AAPL")
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                    Image(systemName: "heart.fill")
                        .font(.title3)
                        .foregroundColor(.yellow)
                    
                }
                Text("Aplle Inc.")
                    .font(.system(size: 12, weight: .regular, design: .rounded))
            }
            Spacer()
            
            VStack(alignment: .trailing){
                Text("$131.32")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                Text("+$0.12(1.15%")
                    .font(.system(size: 12, weight: .regular, design: .rounded))
            }.padding(.trailing,12)
        //}//.background(Color.init(#colorLiteral(red: 0.9004674242, green: 0.9004674242, blue: 0.9004674242, alpha: 1)))
         //.cornerRadius(16)
    }
    }
}

struct StockItem_Previews: PreviewProvider {
    static var previews: some View {
        StockItem()
    }
}

