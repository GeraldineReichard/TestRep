//
//  CardImageIndicatorView.swift
//  TinderTest4723814
//
//  Created by Geraldine Reichard on 23.08.24.
//

import SwiftUI

struct CardImageIndicatorView: View {
    let currentImageIndex: Int
    
    let imageCount: Int
    
    var body: some View {
        HStack {
            ForEach(0..<imageCount, id: \.self){ index in
                Capsule()
                    .foregroundStyle(currentImageIndex == index ? .white: .gray)
                    .frame(width: imageIndicatorWidth, height: 4)
                    .padding(.top,8)
                
            }
        }
    }
}

private extension CardImageIndicatorView {
    var imageIndicatorWidth: CGFloat {
        return SizeConstants.cardWidth / CGFloat(imageCount) - 28
    }
}

#Preview {
    CardImageIndicatorView(currentImageIndex: 1, imageCount: 5)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
