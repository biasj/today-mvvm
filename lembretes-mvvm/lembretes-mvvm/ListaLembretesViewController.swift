//
//  ViewController.swift
//  lembretes-mvvm
//
//  Created by Beatriz Sato on 12/12/21.
//

import UIKit

class ListaLembretesViewController: UITableViewController {
    var viewModel: ListaLembretesViewModel = ListaLembretesViewModel()
}

extension ListaLembretesViewController {
    static let lembreteCellIdentifier = "LembreteCell"
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numeroLinhas()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Self.lembreteCellIdentifier, for: indexPath) as? LembreteCell else {
            fatalError("Não foi possível reutilizar célula")
        }
        
        let lembrete = viewModel.lembrete(linha: indexPath.row)
        
        cell.tituloLabel.text = lembrete.titulo
        cell.dataLabel.text = lembrete.dataLimite.description
        
        let imagem = lembrete.foiFeito ? UIImage(systemName: "circle.fill") : UIImage(systemName: "circle")
        
        cell.botaoFeito.setBackgroundImage(imagem, for: .normal)
        
        cell.acaoBotaoFeito = {
            self.viewModel.toggleLembrete(linha: indexPath.row)
            tableView.reloadRows(at: [indexPath], with: .none)
        }
        
        return cell
    }
}
