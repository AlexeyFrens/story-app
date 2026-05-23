//
//  Screen03.swift
//  StoryApp
//
//  Created by Igor Carrasco on 20/05/26.
//

import SwiftUI

struct Screen03: View {
    var body: some View {
        VStack{
            Text("Capítulo 3")
                .font(.default)
                .fontWeight(.semibold)
                .foregroundStyle(Color.gray)
            Text("As Sete Cadeiras")
                .font(.title3)
                .fontWeight(.bold)
            
            Spacer()
            
            Text("Há sete cadeiras na sala de comando. Sete cintos desafivelados. Sete xícaras de café vazias e frias sobre a mesa. Alguém estava aqui - sete pessoas. E agora só existo eu.")
                .padding()
            
            Spacer()
            
            //NavigationLink(destination: Screen04()) {
            Text("Próximo capítulo →")
                .foregroundStyle(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.red)
                .cornerRadius(20)
            //}
        }
        .padding(20)
        .background(Color.black.opacity(0.1))
    }
}

#Preview {
    Screen03()
}
