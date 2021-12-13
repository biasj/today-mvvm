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
    
    var acaoBotaoFeito: AcaoBotaoFeito?
    
    @IBAction func botaoFeitoApertado(_ sender: UIButton) {
        acaoBotaoFeito?()
    }
}
