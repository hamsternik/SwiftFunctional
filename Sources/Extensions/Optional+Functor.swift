//
//  Optional+Functor.swift
//  SwiftFunctional
//
//  Created by Nikita Khomitsevich on 9/10/18.
//  Copyright © 2018 Nikita Khomitsevich. All rights reserved.
//

import Foundation


extension Optional: Functor {
    
    typealias A = Wrapped
    
    func fmap<T, F>(_ by: (Wrapped) -> T) -> F where T == F.A, F : Functor {
        switch self {
        case .none:
            return Optional<T>.none as! F
        case .some(let wrapped):
            return Optional<T>.some(by(wrapped)) as! F
        }
    }
    
}
