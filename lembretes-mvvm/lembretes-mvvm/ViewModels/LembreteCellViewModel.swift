//
//  LembreteCellViewModel.swift
//  lembretes-mvvm
//
//  Created by Beatriz Sato on 13/12/21.
//

import Foundation

final class LembreteCellViewModel {
    private var lembrete: Lembrete
    
    init(lembrete: Lembrete) {
        self.lembrete = lembrete
    }
    
    func textoTitulo() -> String {
        return lembrete.titulo
    }
    
    func dataLimite() -> String {
        return lembrete.dataLimite.description
    }
    
    func notas() -> String? {
        return lembrete.notas
    }
    
    func tarefaFeita() -> Bool {
        return lembrete.foiFeito
    }
}
