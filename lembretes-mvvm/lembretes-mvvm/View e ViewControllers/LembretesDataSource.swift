//
//  LembretesDataSource.swift
//  lembretes-mvvm
//
//  Created by Beatriz Sato on 13/12/21.
//

import UIKit

class LembretesDataSource: NSObject {
    var viewModel: ListaLembretesViewModel
    
    init(viewModel: ListaLembretesViewModel) {
        self.viewModel = viewModel
    }
}

extension LembretesDataSource: UITableViewDataSource {
    static let lembreteCellIdentifier = "LembreteCell"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numeroLinhas()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Self.lembreteCellIdentifier, for: indexPath) as? LembreteCell else {
            fatalError("Não foi possível reutilizar célula")
        }
        
        let lembrete = viewModel.lembrete(linha: indexPath.row)
        let cellViewModel = LembreteCellViewModel(lembrete: lembrete)
        
        cell.configurar(cellViewModel: cellViewModel) {
            self.viewModel.toggleLembrete(linha: indexPath.row)
            tableView.reloadRows(at: [indexPath], with: .none)
        }
        
        return cell
    }
}
