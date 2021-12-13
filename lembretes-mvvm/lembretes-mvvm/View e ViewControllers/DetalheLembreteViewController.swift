//
//  DetalheLembreteViewController.swift
//  lembretes-mvvm
//
//  Created by Beatriz Sato on 13/12/21.
//

import UIKit

class DetalheLembreteViewController: UITableViewController {
    enum LinhaLembrete: Int, CaseIterable {
        case titulo
        case dataLimite
        case tempoLimite
        case notas
        
        func mostrarTexto(cellViewModel: LembreteCellViewModel?) -> String? {
            switch self {
            case .titulo:
                return cellViewModel?.textoTitulo()
            case .dataLimite:
                return cellViewModel?.dataLimite()
            case .tempoLimite:
                return cellViewModel?.dataLimite()
            case .notas:
                return cellViewModel?.notas()
            }
        }
        
        var cellImage: UIImage? {
            switch self {
            case .titulo:
                return nil
            case .dataLimite:
                return UIImage(systemName: "calendar")
            case .tempoLimite:
                return UIImage(systemName: "clock")
            case .notas:
                return UIImage(systemName: "square.and.pencil")
            }
        }
    }
    
    var cellViewModel: LembreteCellViewModel?
    
    func configure(cellViewModel: LembreteCellViewModel) {
        self.cellViewModel = cellViewModel
    }
}

extension DetalheLembreteViewController {
    static let detalheLembreteCellIdentifier = "DetalheLembreteCell"
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        LinhaLembrete.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Self.detalheLembreteCellIdentifier, for: indexPath)
        
        let linha = LinhaLembrete(rawValue: indexPath.row)
        
        cell.textLabel?.text = linha?.mostrarTexto(cellViewModel: cellViewModel)
        cell.imageView?.image = linha?.cellImage
        
        return cell
    }
}
