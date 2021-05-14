//
//  DisDetailView.swift
//  TravelUI
//
//  Created by Madeleine Gradney on 5/13/21.
//

import SwiftUI

struct DisDetailView: View {
    
    @Binding var selectedDiscount : DisModel!
    @Binding var show: Bool
    var animation : Namespace.ID
    
    
    var body: some View {
        
        VStack{
            HStack{
                Button(action: {}) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white)
                        .clipShape(Circle())
                    
                }
                Spacer()
                
                HStack(alignment: .top){
                    
                    VStack(alignment: .leading, spacing: 12) {
                        
                        Text(selectedDiscount.title)
                            .font(.title)
                            .foregroundColor(Color("txt"))
                            .fontWeight(.bold)
                            .matchedGeometryEffect(id: selectedDiscount.title, in: animation)
                        
                    }
                    
                    Spacer(minLength: 0)
                    
                    Text(selectedDiscount.price)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("txt"))
                }
                .padding()
                .padding(.bottom)
            }
            .background(Color.white)
            .clipShape(RoundedShape(corners: [.bottomLeft,.bottomRight]))
            
            // ScrollView For Smaller Size Phones....
            
            if UIScreen.main.bounds.height < 750{
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    BottomView()
                }
            }
            else{
                
                BottomView()
            }
            
            Spacer(minLength: 0)
        }
        .background(Color("bg"))
    }
            
      
}
        
    



