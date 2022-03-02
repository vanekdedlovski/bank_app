//
//  ViewModule.swift
//  MyBank_app
//
//  Created by bnkwsr2 on 28.02.2022.
//

import Foundation
import Alamofire

class ViewModule : ObservableObject {
    @Published var cod = "5788"
    @Published var users:Authln?
    @Published var carts:[cartUser] = []
    func Auth(success : @escaping () -> Void) {
        AF.request("https://621c7616768a4e1020aa9ee0.mockapi.io/User/1", method: .get)
            .responseDecodable(of: Authln.self) { res in
                debugPrint(res)
                self.users = res.value!
                success()
            }
    }
    func GetCarts(success : @escaping () -> Void) {
        AF.request("https://621c7616768a4e1020aa9ee0.mockapi.io/cartUser", method: .get)
            .responseDecodable(of: [cartUser].self) {
                res in
                debugPrint(res)
                self.carts = res.value ?? []
                success()
            }
    }
}
