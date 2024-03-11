//
//  LoginViewModel.swift
//  iosApp
//
//  Created by Rodrigo Cavalcante on 23/02/24.
//
import SwiftUI
import Foundation
import Shared

class LoginViewModel: ObservableObject {
    
    let loginService: UserService
    
    init(loginService: UserService) {
        self.loginService = loginService
    }
    
    func register(email: String, password: String, onResult: @escaping (String,Bool) -> Void) {
        loginService.register(user: User(email: email, password: password)) { error in
            
            if(error == nil) {
                onResult("Registro feito com sucesso! :)", true)
            } else {
                onResult("Oops... Algo deu errado! :(", false)
            }
        }
    }
}
