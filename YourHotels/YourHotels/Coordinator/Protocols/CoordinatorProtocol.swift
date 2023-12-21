//
//  CoordinatorProtocol.swift
//  YourHotels
//
//  Created by Vitaly Anpilov on 18.12.2023.
//

import UIKit

protocol CoordinatorProtocol: AnyObject {
    var navigationController: UINavigationController { get set }
    
    func start()
}
