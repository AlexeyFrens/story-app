import SwiftUI

struct EndView: View {
    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "robot.fill")
                .font(.system(size: 60))
                .foregroundColor(.red)
            Text("Fim da história")
                .font(.system(size: 24, weight: .bold))
            Text("Você chegou ao final. Obrigado por ler.")
                .font(.system(size: 16))
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
        }
    }
}
