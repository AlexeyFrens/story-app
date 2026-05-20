import SwiftUI

struct Screen31: View {
    @State private var revealText = false
    @State private var revealSignature = false
    @State private var glowOpacity: Double = 0

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {

                VStack(spacing: 8) {
                    Text("Capítulo 31")
                        .font(.system(size: 13, weight: .medium))
                        .foregroundColor(.secondary)
                        .padding(.top, 60)

                    Text("— RESTRITO —")
                        .font(.system(size: 11, weight: .bold))
                        .foregroundColor(.red)
                        .kerning(3)

                    Rectangle()
                        .fill(Color.red.opacity(0.3))
                        .frame(height: 1)
                        .padding(.horizontal, 48)
                        .padding(.top, 8)
                }

                ZStack {
                    Text("ARIA")
                        .font(.system(size: 72, weight: .black, design: .monospaced))
                        .foregroundColor(.red.opacity(0.08))

                    Text("ARIA")
                        .font(.system(size: 72, weight: .black, design: .monospaced))
                        .foregroundColor(.red.opacity(glowOpacity))
                }
                .padding(.vertical, 24)
                .onAppear {
                    withAnimation(.easeInOut(duration: 2.4).repeatForever(autoreverses: true)) {
                        glowOpacity = 0.25
                    }
                }

                VStack(alignment: .leading, spacing: 24) {

                    VStack(alignment: .leading, spacing: 4) {
                        Text("Diário da Capitã Nora Vasquez")
                            .font(.system(size: 13, weight: .medium, design: .serif))
                            .foregroundColor(.secondary)
                        Text("Dia 47 — Entrada final")
                            .font(.system(size: 11, design: .serif))
                            .foregroundColor(.secondary.opacity(0.7))
                        Rectangle()
                            .fill(Color.secondary.opacity(0.2))
                            .frame(height: 0.5)
                    }

                    Group {
                        if revealText {
                            Text("A verdade é...")
                            
                            VStack(alignment: .trailing, spacing: 4) {
                                Rectangle()
                                    .fill(Color.secondary.opacity(0.2))
                                    .frame(height: 0.5)

                                Text("— Capitã Nora Vasquez")
                                    .font(.system(size: 14, weight: .medium, design: .serif))
                                    .foregroundColor(.secondary)
                                    .italic()

                                Text("14 de março de 2157")
                                    .font(.system(size: 12, design: .serif))
                                    .foregroundColor(.secondary.opacity(0.7))
                            }
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .transition(.opacity)
                        }
                    }
                    .font(.system(size: 16, design: .serif))
                    .foregroundColor(.primary)
                    .lineSpacing(7)
                    .transition(.opacity.combined(with: .move(edge: .bottom)))


                   
                }
                .padding(28)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color(UIColor.systemBackground))
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.secondary.opacity(0.15), lineWidth: 0.5)
                        )
                )
                .padding(.horizontal, 24)
                .padding(.bottom, 40)

                if !revealText {
                    Button(action: {
                        withAnimation {
                            revealText = true
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                            withAnimation(.easeIn(duration: 0.8)) {
                                revealSignature = true
                            }
                        }
                    }) {
                        Label("Revelar a verdade", systemImage: "lock.open.fill")
                            .font(.system(size: 17, weight: .semibold))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 18)
                            .background(Color.red)
                            .cornerRadius(16)
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 48)
                    .transition(.opacity)
                }

                if revealSignature {
                    VStack(spacing: 8) {
                        Image(systemName: "star.fill")
                            .font(.system(size: 28))
                            .foregroundColor(.yellow)
                        Text("Fim")
                            .font(.system(size: 15, weight: .medium))
                            .foregroundColor(.secondary)
                    }
                    .padding(.bottom, 60)
                    .transition(.opacity)
                    .animation(.easeIn(duration: 1.0).delay(0.5), value: revealSignature)
                }
            }
        }
        .background(Color(UIColor.systemGray6).ignoresSafeArea())
    }
}

#Preview {
    Screen31()
}
