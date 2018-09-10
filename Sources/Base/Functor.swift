//
//  Functor.swift
//  SwiftFunctor
//
//  Created by Nikita Khomitsevich on 9/10/18.
//  Copyright © 2018 Nikita Khomitsevich. All rights reserved.
//

import Foundation


protocol Functor {
    
    associatedtype A
    
    /// [Haskell] fmap :: (a -> b) -> f a -> f b
    func fmap<T, F: Functor>(_ by: (A) -> T) -> F where T == F.A
    
}
