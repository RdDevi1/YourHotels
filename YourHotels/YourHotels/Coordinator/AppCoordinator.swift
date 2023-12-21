//
//  AppCoordinator.swift
//  YourHotels
//
//  Created by Vitaly Anpilov on 18.12.2023.
//

import UIKit

final class AppCoordinator: CoordinatorProtocol {
    var navigationController: UINavigationController
    private var networkClient: NetworkClientProtocol
    
    init(navigationController: UINavigationController, networkClient: NetworkClientProtocol) {
        self.navigationController = navigationController
        self.networkClient = networkClient
    }
    
    func start() {
        
    }
    
}
