//
//  OnboardingNavigationStack.swift
//  Eventer
//
//  Created by windowcow on 6/1/24.
//

import SwiftUI

struct OnboardingNavigationStack: View {
    var body: some View {
        NavigationStack {
            OnboardingPage1()
        }
    }
}

struct OnboardingPage1: View {
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(
                    .linearGradient(
                        colors: [
                            Color.white,
                            Color.appBlue.opacity(0.1),
                            Color.appBlue.opacity(0.1),
                            Color.appBlue.opacity(0.7)
                        ].reversed(),
                        startPoint: .top, endPoint: .bottom)
                )
                .ignoresSafeArea()
            
            VStack {
                Circle()
                    .frame(width: 100)
                    .padding(10)
                    .foregroundStyle(
                        .red.gradient.shadow(
                            .inner(color: .yellow, radius: 50, x: 0, y: 0)
                        )
                    )
                Spacer()
                
                Text("What event are you waiting for")
                    .multilineTextAlignment(.leading)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .layoutPriority(1)
                 
                Spacer()

                VStack {
                    ForEach([0, 1, 2, 3], id: \.self) { _ in
                        Button {
                            
                        } label: {
                            Label {
                                Text("Studying")
                            } icon: {
                                Image(systemName: "book.fill")
                            }
                            .frame(maxWidth: .infinity, minHeight: 60)
                            .background(.ultraThinMaterial, in: .capsule)
                            .padding(.horizontal)
                        }

                    }
                }

                Spacer()
                
                NavigationLink {
                    VStack {
                        Text("HI")
                    }
                } label: {
                    Image(systemName: "arrow.right")
                        .font(.title)
                        .foregroundStyle(.secondary)
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .background(.primary, in: .rect(cornerRadius: 10))
                        .padding()
                        .foregroundStyle(.blue, .white)
                }
            }
        }
//        .navigation
    }
}

//struct RoundRectButtonLabel: some View {
//    var body: some View {
//        
//    }
//}

struct LargeButton: View {
    var systemName: String
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: systemName)
                .font(.title)
                .foregroundStyle(.secondary)
                .frame(maxWidth: .infinity, maxHeight: 60)
                .background(.primary, in: .rect(cornerRadius: 10))
                .padding()
        }
    }
}

//    .background(
//        .ultraThickMaterial.shadow(
//            .inner(
//                color: .green,
//                radius: 50, x: 0, y: 0
//            )
//        ),
//        in: .circle
//    )

#Preview {
    OnboardingNavigationStack()
}
