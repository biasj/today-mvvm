//
//  LembreteCell.swift
//  lembretes-mvvm
//
//  Created by Beatriz Sato on 12/12/21.
//

import UIKit

class LembreteCell: UITableViewCell {
    typealias AcaoBotaoFeito = () -> Void
    
    @IBOutlet var tituloLabel: UILabel!
    @IBOutlet var dataLabel: UILabel!
    @IBOutlet var botaoFeito: UIButton!
    
    private var acaoBotaoFeito: AcaoBotaoFeito?
    
    @IBAction func botaoFeitoApertado(_ sender: UIButton) {
        acaoBotaoFeito?()
    }
    
    func configurar(cellViewModel: LembreteCellViewModel, acaoBotaoFeito: @escaping AcaoBotaoFeito) {
        tituloLabel.text = cellViewModel.textoTitulo()
        dataLabel.text = cellViewModel.dataLimite()
        
        let imagem = cellViewModel.tarefaFeita() ? UIImage(systemName: "circle.fill") : UIImage(systemName: "circle")
        
        botaoFeito.setBackgroundImage(imagem, for: .normal)
        
        self.acaoBotaoFeito = acaoBotaoFeito
    }
}
