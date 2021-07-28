//
//  Login.swift
//  Antheia
//
//  Created by Fanny Li on 7/23/21.
//

import SwiftUI


struct Login : View {
    @State private var name = ""
    @State private var password = ""
    var body: some View {
        NavigationView{
            
            ZStack{
                Rectangle().foregroundColor(Color(red: 0.98, green: 0.93, blue: 0.80)).edgesIgnoringSafeArea(.all)
                
                VStack{
                    Text("Login").font(.system(size: 30)).fontWeight(.bold).foregroundColor(Color(red: 0.11, green: 0.26, blue: 0.20)).kerning(1.9).frame(maxWidth: .infinity, alignment: .topLeading)
                    
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text("Email").font(.system(size: 20)).fontWeight(.bold).foregroundColor(Color(red: 0.35, green: 0.18, blue: 0.05)).kerning(1.0)
                        
                        TextField("jamesdiamond@gmail.com", text: $name).font(.system(size: 18, weight: .semibold)).foregroundColor(.black)
                        
                        Divider()
                    }).padding(.top, 40)
                    
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text("Password").font(.system(size: 20)).fontWeight(.bold).foregroundColor(Color(red: 0.35, green: 0.18, blue: 0.05)).kerning(1.0)
                        
                        SecureField("1234", text: $password).font(.system(size: 18, weight: .semibold)).foregroundColor(.black)
                        
                        Divider()
                    }).padding(.top, 40)
                    
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            Text("Login").font(.title3).fontWeight(.bold).foregroundColor(Color(red: 0.11, green: 0.26, blue: 0.20)).kerning(1.0).padding().background(Color(red: 0.91, green: 0.93, blue: 0.79).opacity(0.6)).cornerRadius(20).padding(.top, 40)
                        })
                    HStack{
                        Text("Not a Member?").fontWeight(.bold).foregroundColor(Color(red: 0.35, green: 0.18, blue: 0.05))
                        NavigationLink(
                            destination: SignUp().navigationBarBackButtonHidden(true),
                            label: {
                                Text("Sign Up").fontWeight(.bold).foregroundColor(.gray)
                            })
                    }
                    
                }.padding().frame(maxHeight: .infinity, alignment: .top)
                
            }.overlay(
                Image("trees").resizable().aspectRatio(contentMode: .fit)
                
                ,alignment: .bottom 
            )
            
        }
    }
}

struct Login_Preview: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
