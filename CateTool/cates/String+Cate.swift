//
//  String.swift
//  CateTool
//
//  Created by sunhua on 2018/8/9.
//  Copyright © 2018年 sunhua. All rights reserved.
//

import Foundation

extension String {
    /// 获取字符串中的数字
    func contentNumber() -> [String] {
        
        let numbers = split(omittingEmptySubsequences: true) { !"0123456789.".contains(String($0))}
            .map {String($0)}
        return numbers
    }
    
    // string -> Json
    func toJson() -> [AnyHashable : Any]?{
        
        if let data: Data = self.data(using: .utf8){
            if let json = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [AnyHashable : Any]{
                return json
            }
        }
        return nil
    }
}
