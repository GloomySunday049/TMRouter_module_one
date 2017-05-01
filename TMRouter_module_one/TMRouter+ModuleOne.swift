//
//  TMRouter+ModuleOne.swift
//  TMRouter_module_one
//
//  Created by 孟钰丰 on 2017/5/1.
//  Copyright © 2017年 GloomySunday. All rights reserved.
//

import TMRouter

public extension TMRouter {
    
    
    func module_One_jumpToControllerOne(from: UIViewController) -> Bool {
        
        let bundle = Bundle.init(for: OneViewController.self)
        let i = UIStoryboard(name: "main", bundle: bundle).instantiateViewController(withIdentifier: "OneViewController")
        guard i is OneViewController else {
            return false
        }
        
        if let navi = from.navigationController {
            navi.show(i, sender: nil)
        } else {
            from.present(i, animated: true, completion: nil)
        }
        
        return true
    }

}
