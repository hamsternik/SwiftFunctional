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
    associatedtype B: Functor
    
    func fmap<T>(_ by: (A) -> T) -> B where B.A == T
    
}
