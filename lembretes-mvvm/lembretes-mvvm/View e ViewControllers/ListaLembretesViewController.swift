//
//  ViewController.swift
//  lembretes-mvvm
//
//  Created by Beatriz Sato on 12/12/21.
//

import UIKit

class ListaLembretesViewController: UITableViewController {
    var viewModel: ListaLembretesViewModel = ListaLembretesViewModel()
    
    static let detalheSegueIdentifier = "DetalheLembreteSegue"
    
    private var dataSource: LembretesDataSource?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Self.detalheSegueIdentifier,
           let destino = segue.destination as? DetalheLembreteViewController,
           let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell) {
            let cellViewModel = LembreteCellViewModel(lembrete: viewModel.lembrete(linha: indexPath.row))
            destino.configure(cellViewModel: cellViewModel)
        }
    }
    
    override func viewDidLoad() {
        dataSource = LembretesDataSource(viewModel: viewModel)
        tableView.dataSource = dataSource
    }
}
