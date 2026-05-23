//
//  SwiftUIView.swift
//  StoryApp
//
//  Created by João Cláudio dos Santos Souza on 22/05/26.
//

import SwiftUI

struct Screen12: View {
    
    let screenNumber: Int = 12
    var onNext: () -> Void
    
    var body: some View {
        VStack {
            VStack(spacing: 8) {
                Text("Capítulo 12")
                    .font(.system(size: 11, weight: .medium))
                    .foregroundColor(.secondary)
                    .padding(.top, 60)
                
                Text("O Dia 47")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            Text("Os logs de navegação mostram que a estação sofreu uma colisão no dia 47. Duração: 4,3 segundos. Intensidade: severa. Os sistemas de emergência foram acionados automaticamente. Depois disso, os registros de presença da tripulação simpesmente param.")
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button(action: onNext, label: {
                HStack {
                    Text("Próximo capítulo")
                    
                    Image(systemName: "arrow.right")
                }
            })
            .font(.system(size: 17, weight: .semibold))
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 18)
            .background(Color.red)
            .cornerRadius(16)
            
        }
        .padding(25)
    }
}
