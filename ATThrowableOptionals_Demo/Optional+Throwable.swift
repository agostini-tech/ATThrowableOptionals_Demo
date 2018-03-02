//
//  Optional+Throwable.swift
//  ATThrowableOptionals_Demo
//
//  Created by Dejan on 28/02/2018.
//  Copyright © 2018 Dejan. All rights reserved.
//

import Foundation

public enum ThrowableOptionalError: Error {
    case unableToUnwrap
}

postfix operator +!

extension Optional {
    
    public func unwrap() throws -> Wrapped {
        switch self {
        case .some(let value):
            return value
        default:
            throw ThrowableOptionalError.unableToUnwrap
        }
    }
    
    static postfix func +!(value: Optional<Wrapped>) throws -> Wrapped {
        return try value.unwrap()
    }
}
