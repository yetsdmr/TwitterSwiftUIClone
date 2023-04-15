//
//  CustomInputView.swift
//  TwitterSwiftUIClone
//
//  Created by Yunus Emre Taşdemir on 15.04.2023.
//

import SwiftUI

struct CustomInputView: View {
    let imageName: String
    let placeHolderText: String
    @Binding var text: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                TextField(placeHolderText, text: $text)
            }
            
            Divider()
                .background(Color(.darkGray))
        }
    }
}

struct CustomInputView_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputView(imageName: "envelope", placeHolderText: "Email", text: .constant(""))
    }
}
