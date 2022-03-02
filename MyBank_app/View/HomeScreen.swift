//
//  HomeScreen.swift
//  MyBank_app
//
//  Created by bnkwsr2 on 28.02.2022.
//

import SwiftUI
import Kingfisher
import UIKit

struct HomeScreen: View {
    @Binding var screen : String
    @EnvironmentObject var viewModule : ViewModule
    @Binding var selection : Int
    @State var columnsButton : [GridItem] = [GridItem(.adaptive(minimum: UIScreen.main.bounds.width / 3 - 32))]
    @State var IsUsed = "finance"
    @State var TotalBalance : Double = 0
    var body: some View {
        VStack(spacing: 0) {
            
            TabView(selection: $selection) {
                VStack {
                    HStack {
                        VStack(alignment:.leading) {
                            Text("Total balance")
                                .foregroundColor(Color("MyGray"))
                               
                            Text("**£\(TotalBalance, specifier: "%.1f")**")
                                .foregroundColor(.white)
                                .font(.system(size: 32))
                            VStack {
                                Text("This month")
                                    .foregroundColor(Color("MyGray"))
                                HStack {
                                    Image("up")
                                    Text("£ 5,235.25")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20))
                                }
                                HStack {
                                    Image("down")
                                    Text("£ 3,235.25")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20))
                                }
                            }
                            .padding(.top,15)
                        
                        }
                        Spacer()
                        VStack {
                            ZStack {
                                ForEach(viewModule.carts, id: \.cartId) { cart in
                                    var x = Color(uiColor: UIColor(red: CGFloat.random(in: 1...255), green: CGFloat.random(in: 1...255), blue: CGFloat.random(in: 1...255), alpha: 1))
                                   
                                    VStack {
                                        
                                    }
                                    .frame(width: 125, height: 230)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(x)
                                    )
                                    .offset(x:15 * CGFloat(cart.cartId), y: 5 * CGFloat(cart.cartId))
                                    
                                       
                                }
                            }
                            
                        }
                        
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.5)
            
            VStack {
                LazyVGrid(columns: columnsButton, spacing: 20) {
                    Button {
                        
                    } label: {
                        VStack {
                            Image("Transfer")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 107, height: 44)
                                        .foregroundColor(Color("ButtonColor"))
                                )
                            Text("Transfer")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color("MyGray"))
                                .padding(.top,10)
                        }
                        .frame(width: 107, height: 74)
                    }
                    Button {
                        
                    } label: {
                        VStack {
                            Image("Exchange")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 107, height: 44)
                                        .foregroundColor(Color("ButtonColor"))
                                )
                            Text("Exchange")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color("MyGray"))
                                .padding(.top,10)
                        }
                        .frame(width: 107, height: 74)
                    }
                    Button {
                        
                    } label: {
                        VStack {
                            Image("Payments")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 107, height: 44)
                                        .foregroundColor(Color("ButtonColor"))
                                )
                            Text("Payments")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color("MyGray"))
                                .padding(.top,10)
                        }
                        .frame(width: 107, height: 74)
                    }
                    Button {
                        
                    } label: {
                        VStack {
                            Image("Credits")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 107, height: 44)
                                        .foregroundColor(Color("ButtonColor"))
                                )
                            Text("Credits")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color("MyGray"))
                                .padding(.top,10)
                        }
                        .frame(width: 107, height: 74)
                    }
                    Button {
                        
                    } label: {
                        VStack {
                            Image("Deposits")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 107, height: 44)
                                        .foregroundColor(Color("ButtonColor"))
                                )
                            Text("Deposits")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color("MyGray"))
                                .padding(.top,10)
                        }
                        .frame(width: 107, height: 74)
                    }
                    Button {
                        
                    } label: {
                        VStack {
                            Image("Cashback")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 107, height: 44)
                                        .foregroundColor(Color("ButtonColor"))
                                )
                            Text("Cashback")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color("MyGray"))
                                .padding(.top,10)
                        }
                        .frame(width: 107, height: 74)
                    }
                    Button {
                        
                    } label: {
                        VStack {
                            Image("ATM")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 107, height: 44)
                                        .foregroundColor(Color("ButtonColor"))
                                )
                            Text("ATM")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color("MyGray"))
                                .padding(.top,10)
                        }
                        .frame(width: 107, height: 74)
                    }
                    Button {
                        
                    } label: {
                        VStack {
                            Image("Security")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 107, height: 44)
                                        .foregroundColor(Color("ButtonColor"))
                                )
                            Text("Security")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color("MyGray"))
                                .padding(.top,10)
                        }
                        .frame(width: 107, height: 74)
                    }
                    Button {
                        
                    } label: {
                        VStack {
                            Image("More")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 107, height: 44)
                                        .foregroundColor(Color("ButtonColor"))
                                )
                            Text("More")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color("MyGray"))
                                .padding(.top,10)
                        }
                        .frame(width: 107, height: 74)
                    }
                    

                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.5)
            .padding(.horizontal,18)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(
            .black
        )
        .ignoresSafeArea()
       
        .onAppear {
            debugPrint(viewModule.cod)
            viewModule.Auth {
                viewModule.GetCarts {
                    for cart in viewModule.carts {
                        TotalBalance += Double(cart.balance) ?? 0
                        
                    }
                }
            }
            
        }
        .overlay(
            HStack {
                Button {
                    
                } label: {
                    Image("settings")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 22)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 48, height: 44)
                                .foregroundColor(Color("ButtonColor"))
                            )
                }
                Spacer()
                KFImage(URL(string: "\(viewModule.users?.avatar ?? "")"))
                    .resizable()
                    .frame(width: 44, height: 44)
                    .cornerRadius(60)
                    .background(
                        Circle()
                            .trim(from: 0.0, to: 0.75)
                            .stroke(lineWidth: 1)

                            .foregroundColor(Color("Green"))
                            .frame(width: 54, height: 54)
                    )
                Spacer()
                Button {
                    
                } label: {
                    Image("notification")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 22)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 48, height: 44)
                                .foregroundColor(Color("ButtonColor"))
                            )
                }
            }
            .padding(.horizontal,26)
                .offset(y: 35)
            ,alignment: .top
        )
        .overlay(
            HStack {
                Button {
                    withAnimation {
                        IsUsed = "finance"
                    }
                } label: {
                    Image("finance")
                        .frame(width: 107, height: 44)
                        .background(
                       
                                LinearGradient(colors: [Color("Yellow"),Color("Green")], startPoint: .bottomLeading, endPoint: .topTrailing)
                                    .mask(RoundedRectangle(cornerRadius: 10))
                                    .opacity(IsUsed == "finance" ? 1 : 0)
                           
                            
                        )
                }
                Button {
                    withAnimation {
                        IsUsed = "Stats"
                    }
                } label: {
                    Image("Stats")
                        .frame(width: 107, height: 44)
                        .background(
                            LinearGradient(colors: [Color("Orange"),Color("Pink")], startPoint: .bottomLeading, endPoint: .topTrailing)
                                .mask(RoundedRectangle(cornerRadius: 10))
                                .opacity(IsUsed == "Stats" ? 1 : 0)
                            
                        )
                }
                Button {
                    withAnimation {
                        IsUsed = "chatbot"
                    }
                } label: {
                    Image("chatbot")
                        .frame(width: 107, height: 44)
                        .background(
                            LinearGradient(colors: [Color("Blue"),Color("Purple")], startPoint: .bottomLeading, endPoint: .topTrailing)
                                .mask(RoundedRectangle(cornerRadius: 10))
                                .opacity(IsUsed == "chatbot" ? 1 : 0)
                            
                        )
                }

            }
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: UIScreen.main.bounds.width, height: 100)
                        .foregroundColor(Color("ButtonColor"))
                )
                .offset(y:-35)
            ,alignment: .bottom
        )
    }
}

//struct HomeScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeScreen()
//    }
//}
