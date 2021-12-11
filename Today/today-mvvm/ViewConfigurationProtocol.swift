//
//  ViewConfigurationProtocol.swift
//  today-mvvm
//
//  Created by Beatriz Sato on 11/12/21.
//

import Foundation

public protocol ViewConfigurationProtocol: AnyObject {
    func buildViewHierarchy()
    func setupConstraints()
    func configureViews()
    func setupViewConfiguration()
}

extension ViewConfigurationProtocol {
    func setupViewConfiguration() {
        buildViewHierarchy()
        setupConstraints()
        configureViews()
    }
    
    func configureViews() { }
}
