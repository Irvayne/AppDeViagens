//
//  Lugar.swift
//  AppDeViagens
//
//  Created by Student on 4/27/17.
//  Copyright © 2017 Irvayne. All rights reserved.
//

import Foundation

class Lugar {
    
    let nome: String
    let foto: String
    
    init(nome: String, foto: String) {
        self.nome = nome
        self.foto = foto
    }
}


class LugarDAO {
    
    static var lugares = [Lugar]()
    
    static func inicialize() {
        if lugares.isEmpty {
            lugares = [
                Lugar(nome: "Campeira", foto: "cachoeira"),
                Lugar(nome: "Grotao", foto: "corredeira"),
                Lugar(nome: "Igraja do Azia", foto: "igreja"),
                Lugar(nome: "Jardim do Eden", foto: "jardim"),
                Lugar(nome: "Portal da Alegria", foto: "portal")
            ]
        }
    }
    
    static func getLugares() -> [Lugar]{
        LugarDAO.inicialize()
        return LugarDAO.lugares
    }
}
