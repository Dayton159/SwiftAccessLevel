//
//  AFile.swift
//  SwiftAccessLevel
//
//  Created by Dayton on 11/12/20.
//

import Foundation

class AClass {
    
    //Global variables, also called class properties.
    private var aPrivateProperty = "private property"
    
    fileprivate var aFilePrivateProperty = "fileprivate property"
    
    var anInternalProperty = "internal property"
    
    func methodA () {
        
        var aLocalVariable = "local variable"
        
        //Step 1. Try to print aLocalVariable Here - Possible
//        print("\(aLocalVariable) printed from methodA in AClass")
        
        //Step 3. Try to print aPrivateProperty Here --Possible
//        print(aPrivateProperty)
        
        //Step 6. Try to print aFilePrivateProperty Here --Possible
//        print(aFilePrivateProperty)
        
        //Step 9. Try to print anInternalProperty Here --Possible
//        print(anInternalProperty)
    }
    
    func methodB () {
        
        //Step 2. Try to print aLocalVariable Here -- Not Possible
//        methodA()
        
        //Step 4. Try to print aPrivateProperty Here --Possible
//        print(aPrivateProperty)
    }
    
}

class AnotherClassInTheSameFile {
    
    init() {
        
        //Step 5. Try to print aPrivateProperty Here -- Not Possible
//        let aClass = AClass()
//        aClass.methodA()
        
        //Step 7. Try to print aFilePrivateProperty Here -- Possible
//        let aClass = AClass()
//        print(aClass.aFilePrivateProperty)
    }
}
