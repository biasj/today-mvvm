//
//  Lembrete.swift
//  lembretes-mvvm
//
//  Created by Beatriz Sato on 12/12/21.
//

import Foundation

struct Lembrete {
    var titulo: String
    var dataLimite: Date
    var notas: String? = nil
    var foiFeito: Bool = false
}

extension Lembrete {
    static var dadosLembretes : [Lembrete] = [
        Lembrete(titulo: "Fazer curso MVC", dataLimite: Date().addingTimeInterval(9000), foiFeito: false),
        Lembrete(titulo: "Fazer curso MVVM", dataLimite: Date().addingTimeInterval(1000), notas: "Primeiro fazer o curso MVC", foiFeito: false),
        Lembrete(titulo: "Fazer commit dessas alterações", dataLimite: Date().addingTimeInterval(80), foiFeito: false),
        Lembrete(titulo: "Ir ao mercado", dataLimite: Date().addingTimeInterval(8000), foiFeito: true),
        Lembrete(titulo: "Comprar comida do cachorro", dataLimite: Date().addingTimeInterval(4000), foiFeito: true),
        Lembrete(titulo: "Comprar presente de natal", dataLimite: Date().addingTimeInterval(3940), foiFeito: false)
    ]
}
