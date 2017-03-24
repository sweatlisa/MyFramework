//
//  MyFramework.swift
//  CreateFramework
//
//  Created by ThomsonTang on 2017/3/21.
//  Copyright © 2017年 ThomsonTang. All rights reserved.
//

import UIKit

public class MyFramework: NSObject {

    static let bundle = Bundle(for: MyFramework.self)
    static let myFrameworkStr = "MyFramework"
    
    public static func loadVCFromStoryboard(){
        let vc = UIStoryboard(name: myFrameworkStr, bundle: bundle).instantiateViewController(withIdentifier: "MyFrameworkViewController")
        UIApplication.shared.keyWindow?.rootViewController?.present(vc, animated: true, completion: nil)
    }
    
    public static func openVCFromXib(){
        let vc = MyFrameworkViewController(nibName: myFrameworkStr, bundle: bundle)
        UIApplication.shared.keyWindow?.rootViewController?.present(vc, animated: true, completion: nil)
    }
    
    public static func loadImage() -> UIImage{
        let image = UIImage(named: myFrameworkStr+".png", in: bundle, compatibleWith: nil)
        return image!
    }
}
