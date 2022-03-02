//
//  SecurityScreen.swift
//  MyBank_app
//
//  Created by bnkwsr2 on 28.02.2022.
//

import SwiftUI


struct SecurityScreen: View {
    @Binding var screen : String
    @State var columns : [GridItem] = [GridItem(.adaptive(minimum: UIScreen.main.bounds.width / 3 - 32))]
    @EnvironmentObject var viewModule : ViewModule
    @State var alert = false
    var body: some View {
        VStack {
            VStack {
                Text("Security screen")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .fontWeight(.heavy)
            }
            .padding(.top, 50)
            VStack {
                Text("Enter your passcode")
                    .foregroundColor(.white)
                    
            }
            .padding(.top,70)
            HStack(spacing:35){
                ForEach((0...4) , id: \.self) { x in
                        Circle()
                            .frame(width: 12, height: 12)
                            .foregroundColor(viewModule.cod.count <= x ? .gray : .green )
                    
                }
            }
            .padding(.top,15)
            VStack {
                LazyVGrid(columns: columns, spacing: 30) {
                    ForEach((0...8), id:\.self) { x in
                        Button {
                            if (viewModule.cod.count <= 4) {
                                viewModule.cod = viewModule.cod + "\(x+1)"
                                print(viewModule.cod)
                            }
                        } label: {
                            Text("\(x+1)")
                                .frame(width: 75, height: 75)
                                .font(.system(size: 32))
                                .foregroundColor(.white)
                                .background(
                                    Circle()
                                        .foregroundColor(Color("ButtonColor"))
                                )
                        }

                    }
                    Button {
                        
                    } label: {
                        Image("touchId")
                            .background(
                                Circle()
                                    .frame(width: 75, height: 75)
                                    .foregroundColor(.black)
                            )
                            
                    }
                    Button {
                        if (viewModule.cod.count <= 4) {
                            viewModule.cod = viewModule.cod + "0"
                            print(viewModule.cod)
                        }
                    } label: {
                        Text("0")
                            .frame(width: 75, height: 75)
                            .font(.system(size: 32))
                            .foregroundColor(.white)
                            .background(
                                Circle()
                                    .foregroundColor(Color("ButtonColor"))
                            )
                    }
                    Button {
                        if (viewModule.cod != "") {
                            viewModule.cod.removeLast()
                        }
                        print(viewModule.cod)
                    } label: {
                        Image("cancel")
                            .background(
                                Circle()
                                    .frame(width: 75, height: 75)
                                    .foregroundColor(.black)
                            )
                           
                            
                    }
                }
            }
            .padding(.top,60)
          
            Spacer()
            VStack {
                Button {
                    
                } label: {
                    Text("Forgot password?")
                        .frame(width: 150, height: 20)
                        .foregroundColor(Color("MyGray"))
                }

            }
            .padding(.top,25)
            Spacer()
            
            
        }
        .alert(viewModule.cod, isPresented: $alert) {
            
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(
            Image("fonts")
                .resizable()
                .aspectRatio(contentMode: .fit)
        )
        .ignoresSafeArea()
       
        .onAppear {
            debugPrint(viewModule.cod)
            viewModule.Auth {
                viewModule.GetCarts {
                    print(1)
                }
            }
        }
        .onChange(of: viewModule.cod) { newValue in
            if (newValue.count == 5) {
                if (Int(newValue) == viewModule.users?.password) {
                    withAnimation {
                        screen = "HomeScreen"
                    }
                } else {
                    alert = true
                }
            }
        }
        
        
    }
}
//
//struct SecurityScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        SecurityScreen()
//    }
//}
