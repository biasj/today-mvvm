//
//  ListaLembretesViewModel.swift
//  lembretes-mvvm
//
//  Created by Beatriz Sato on 12/12/21.
//

import Foundation

final class ListaLembretesViewModel {
    var lembretes = Lembrete.dadosLembretes
    
    func numeroLinhas() -> Int {
        return lembretes.count
    }
    
    func lembrete(linha: Int) -> Lembrete {
        return lembretes[linha]
    }
    
    // modifica o foiFeito
    func toggleLembrete(linha: Int) {
        lembretes[linha].foiFeito.toggle()
    }
}
