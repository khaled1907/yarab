//
//  SwiftUIViewAPIContoler.swift
//  ToDoList
//
//  Created by khaled on 2/9/22.
//

import SwiftUI

class Book: ObservableObject {
@Published var title: String = ""

}
struct Accounts:  Hashable , Decodable  {
    let msg: String
    let technicians: [Technician]
}

struct Technician: Hashable,Decodable{
    let id: Int
    let firstName, lastName, email, phone: String
    let governorate, city, profession: String
}

struct SwiftUIViewAPIContoler: View {
    @State var showbo = false
    @StateObject var ViewModel = UserHomeViewModel()
    @State private var isActive10: Bool = false
    @State private var isActive11: Bool = false
   @StateObject var book = Book()
    @State var accouuuunts  = Accounts(msg:"",technicians: [])
    @State private var isActive: Bool = false
    @State var index = 0
    @Namespace var name
    
    let token = "Bearer-- eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjksImlhdCI6MTY1MTcxNDEyNiwiZXhwIjoxNjUxODAwNTI2fQ.mbmGxGNv3_n8vzErG00xHFC8FW7Oyfh3XaYQB6KMeQ8"
    
    var chosenprof : String = "carpenter"
    var body: some View {
        NavigationView{
           ZStack{
            VStack{
                

                HStack{
                    VStack{
                        Text (chosenprof)
                            .font(.title2)
                           .scaledToFit()
                            .minimumScaleFactor(0.8)
                            .foregroundColor(.white)
                            .frame(width: gentRect().width / 4 , alignment: .leading)
                            
                    }
                    .frame(width : gentRect().width / 2 )
                    
                    VStack{
                        HStack{
                        Text("city")
                            .foregroundColor(.white)
                            .font(.title2)
                          .scaledToFit()
                            .minimumScaleFactor(0.8)
                            
                        Image(systemName: "arrowtriangle.down")
                            .foregroundColor(.white)
                            .padding(.top,3)
                           
                         
                        }
                        .onTapGesture {
                            self.showbo.toggle()
                        }
                        
                    }
                    .frame(width : gentRect().width / 2 )
                    
                }
                .frame(width: gentRect().width , height: gentRect().height  / 10 )
          
                .background(Color(UIColor(named: "bColor")!))
               
                VStack{
                       ZStack{
                           Text("")
                               .hidden()
                       }.frame(width: gentRect().width, height : 0)
                
             Loading()
                }.background(Color(UIColor(named: "buttons_colors")!))
                    .padding(.top,-2)
                
                
          
                
                Section{
                    NavigationLink( destination: Orderss(),
                                    isActive: self.$isActive10)
                    {
                        Text("")
                    }
                    NavigationLink( destination: SettingUser(),
                                    isActive: self.$isActive11)
                    {
                        Text("")
                    }
                    HStack
                    {
                        Button(action: {
                            withAnimation(.spring()){
                                index = 0
                            }
                        })
                        {
                            VStack(spacing:10){
                                
                                Image(systemName: "homekit")
                                    .foregroundColor(index == 0 ? .blue : .primary)
                                
                                Text("Home")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(index == 0 ? .blue : .primary)
                                
                                
                            }     .frame(width: gennntRect().width/3)
                        }
                        
                        Button(action: {
                            self.isActive10 = true
                            withAnimation(.spring()){
                                index = 1
                            }
                        })
                        {
                            VStack(spacing:10){
                                
                                Image(systemName: "cart")
                                    .foregroundColor(index == 1 ? .blue : .primary)
                                Text("My Orders")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(index == 1 ? .blue : .primary)
                                
                                
                            }     .frame(width: gennntRect().width/3)
                        }
                        
                        
                        Button(action: {
                            self.isActive11 = true
                            withAnimation(.spring()){
                               
                                index = 2
                            }
                        })
                        {
                            
                            VStack(spacing:10){
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
                    .frame(width: gentRect().width ,height: gennntRect().height/10)
              
                }.background(Color(UIColor(named: "scroll_view _n_1")!))
            }
          
                if self.showbo{
                    GeometryReader{_ in
                    VStack{
                        alerrrt( showbo: $showbo)

                Button(action: {
           
                self.showbo.toggle()
         
                }){
                Image(systemName: "xmark").resizable()
                .frame(width: 15, height : 15 )
                .foregroundColor(.black)
                .padding(20)

                }
                .background(Color.white)
                .clipShape(Circle())
                .padding(.top,25)
                .padding(.leading ,    gentRect().height / 9.5)

                    }
                    }.background(Color.black.opacity(0.5).edgesIgnoringSafeArea(.all))
                    
                }

                
            }
            
            
            
            
            .navigationBarHidden(true)
  
           
        }.navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
        
    }
    func fetch(token : String, chosenprof : String ){
        
        
        guard let url = URL(string: "https://servizi.seifahmed.com/user/alltechnicians?profession=\(chosenprof)") else {
            print("Invalid URL")
            return
        }
        var request = URLRequest(url: url)
        request.addValue(token, forHTTPHeaderField: "Authorization")
        
        
        URLSession.shared.dataTask(with: request) {data, response, error in
            if let data = data {
                //pull out the declaration of the decoder object
                let decoder = JSONDecoder()
                //set how we want to interpret dates in the JSON
                decoder.dateDecodingStrategy = .iso8601
                //decode directly to an array of User structs rather than a Response
                if let decodedResponse = try?
                    decoder.decode(Accounts.self, from: data) {
                    DispatchQueue.main.async {
                        //decodedResponse is now [User] rather than Response.User
                        self.accouuuunts = decodedResponse
                    }
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
            
        }.resume()
        
    }
    
}





struct SwiftUIViewAPIContoler_Previews: PreviewProvider {
    static var previews: some View {
        Group{
          SwiftUIViewAPIContoler()
                .preferredColorScheme(.dark)
            SwiftUIViewAPIContoler()
                .preferredColorScheme(.light)
     /*  alerrrt()
                 .preferredColorScheme(.dark)
            alerrrt()
                 .preferredColorScheme(.light)*/
        }
    }
}



