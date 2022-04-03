//
//  TechnicainHomeView.swift
//  Servizi
//
//  Created by khaled on 3/23/22.
//

import SwiftUI

struct TechnicainHomeView: View {
    @State var index = 0
    @Namespace var name
    var body: some View {
        VStack (spacing:0){
            HStack{
                Section{
                    Text("")
                }.frame(width:gennntRect().width/6)
                Section
                {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(40)
                }
                .frame(width:gennntRect().width/4,height: gennntRect().width/4)
                Section
                {
                    Text("Servizi")
                        .font(.title)
                        .foregroundColor(.white)
                        .bold()
                }  .frame(width:gennntRect().width/4,height: gennntRect().width/4)
                Section
                {
                    Text( "")
                }  .frame(width:gennntRect().width/2,height: gennntRect().width/4)
            }.frame(width:gennntRect().width, height:gennntRect().height/5.5)
            .background(Image("lodz")
                            .resizable()
                            .scaledToFill()
                        
            )
            ScrollView{
                
                VStack(spacing:25){
                    Spacer()
                    Button(action: {}, label: {
                        HStack{
                            Image("c")
                                .frame(width:gennntRect().width/7)
                            Text("Carpenter")
                                .bold()
                                .foregroundColor(.primary)
                                .font(.title2)
                            Text("")
                                .frame(width:gennntRect().width/2)
                        }  .frame(width:gennntRect().width - gennntRect().width/29,height: gennntRect().height/16)
                    }
                    )
                    
                    .background(Color(UIColor(named: "scroll_view _n_1")!))
                    .cornerRadius(15)
                    //*********************************************************************
                    Button(action: {}, label: {
                        HStack{
                            Image("p")
                                .frame(width:gennntRect().width/7)
                            Text("  Plumber")
                                .bold()
                                .foregroundColor(.primary)
                                .font(.title2)
                            Text("")
                                .frame(width:gennntRect().width/2)
                        }  .frame(width:gennntRect().width - gennntRect().width/29,height: gennntRect().height/16)
                    }
                    )
                    .background(Color(UIColor(named: "scroll_view _n_1")!))
                    .cornerRadius(15)
                    //*********************************************************************
                    Button(action: {}, label: {
                        HStack{
                            
                            Image("a")
                                .frame(width:gennntRect().width/7)
                            Text("Air Conditioning")
                                .bold()
                                .foregroundColor(.primary)
                                .font(.title2)
                            Text("")
                                .frame(width:gennntRect().width/2.9)
                        }  .frame(width:gennntRect().width - gennntRect().width/29,height: gennntRect().height/16)
                    }
                    
                    )
                    .background(Color(UIColor(named: "scroll_view _n_1")!))
                    .cornerRadius(15)
                    //*********************************************************************
                    Button(action: {}, label: {
                        HStack{
                            Image("e")
                                .frame(width:gennntRect().width/7)
                            Text("Electricain")
                                .bold()
                                .foregroundColor(.primary)
                                .font(.title2)
                            Text("")
                                .frame(width:gennntRect().width/2.2)
                        }
                        .frame(width:gennntRect().width - gennntRect().width/29,height: gennntRect().height/16)
                    }
                    )
                    .background(Color(UIColor(named: "scroll_view _n_1")!))
                    .cornerRadius(15)
                    //*********************************************************************
                    Button(action: {}, label: {
                        HStack{
                            Image("w")
                                .frame(width:gennntRect().width/7)
                            Text("Painting Work")
                                .bold()
                                .foregroundColor(.primary)
                                .font(.title2)
                            Text("")
                                .frame(width:gennntRect().width/2.6)
                        }
                        .frame(width:gennntRect().width - gennntRect().width/29,height: gennntRect().height/16)
                    }
                    )
                    .background(Color(UIColor(named: "scroll_view _n_1")!))
                    .cornerRadius(15)
                    //*********************************************************************
                    Button(action: {}, label: {
                        HStack{
                            Image("m")
                                .frame(width:gennntRect().width/7)
                            Text("Car Mechanic")
                                .bold()
                                .foregroundColor(.primary)
                                .font(.title2)
                            Text("")
                                .frame(width:gennntRect().width/2.4)
                        }  .frame(width:gennntRect().width - gennntRect().width/29,height: gennntRect().height/16)
                    }
                    )
                    .background(Color(UIColor(named: "scroll_view _n_1")!))
                    .cornerRadius(15)
                    //*********************************************************************
                }
            }
            .background(Color(UIColor(named: "buttons_colors")!))
            Section{
                HStack
                {
                    
                    
                    Button(action: {
                        withAnimation(.spring()){
                            index = 0
                        }
                    })
                    {
                        VStack(spacing:10){
                            
                            /*  ZStack{
                             Capsule()
                             .fill(Color.black.opacity(0.05))
                             .frame(height : 4 )
                             if index == 0 {
                             Capsule()
                             .fill(Color.blue)
                             .frame(height : 4 )
                             .matchedGeometryEffect(id: "Tab", in: name )
                             
                             }
                             
                             }*/
                            
                            Image(systemName: "homekit")
                                .foregroundColor(index == 0 ? .blue : .primary)
                            
                            Text("Home")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(index == 0 ? .blue : .primary)
                            
                            
                        }     .frame(width: gennntRect().width/3)
                    }
                    
                    Button(action: {
                        withAnimation(.spring()){
                            index = 1
                        }
                    })
                    {
                        VStack(spacing:10){
                            /*             ZStack
                             {
                             Capsule()
                             .fill(Color.black.opacity(0.05))
                             .frame(height : 4 )
                             if index == 1 {
                             Capsule()
                             .fill(Color.blue)
                             .frame(height : 4 )
                             .matchedGeometryEffect(id: "Tab", in: name )
                             
                             }
                             }*/
                            
                            Image(systemName: "cart")
                                .foregroundColor(index == 1 ? .blue : .primary)
                            Text("My Orders")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(index == 1 ? .blue : .primary)
                            
                            
                        }     .frame(width: gennntRect().width/3)
                    }
                    
                    
                    Button(action: {
                        withAnimation(.spring()){
                            index = 2
                        }
                    })
                    {
                        
                        VStack(spacing:10){
                            /*
                             ZStack{
                             Capsule()
                             .fill(Color.black.opacity(0.05))
                             .frame(height : 4 )
                             if index == 2 {
                             Capsule()
                             .fill(Color.blue)
                             .frame(height : 4 )
                             .matchedGeometryEffect(id: "Tab", in:name )
                             
                             }
                             
                             }*/
                            Image(systemName: "gearshape")
                                .foregroundColor(index == 2 ? .blue : .primary)
                            Text("Settings")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(index == 2 ? .blue : .primary)
                            
                            
                            
                        }
                        .frame(width: gennntRect().width/3)
                        
                        
                    }
                    
                    
                    
                }
                
                .padding(.top ,0)
                .frame(width: gennntRect().width ,height: gennntRect().height/10)
            }.background(Color(UIColor(named: "scroll_view _n_1")!))
        }
    }
    
}
struct TechnicainHomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            TechnicainHomeView()
                .preferredColorScheme(.dark)
            TechnicainHomeView()
                .preferredColorScheme(.light)
        }
    }
}

extension View{
    func gennntRect()->CGRect{
        
        return UIScreen.main.bounds
        
    }
    
}
