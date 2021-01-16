//
//  ViewController.swift
//  vfl
//
//  Created by Nirav  on 16/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    var lbl1,lbl2,lbl3,lbl4,lbl5 : UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl1 = UILabel()
        lbl2 = UILabel()
        lbl3 = UILabel()
        lbl4 = UILabel()
        lbl5 = UILabel()
        lbl1?.text = "Label 1"
        lbl1?.backgroundColor = UIColor.red
        lbl1?.translatesAutoresizingMaskIntoConstraints = false
        lbl2?.text = "Label 2"
        lbl2?.backgroundColor = UIColor.blue
        lbl2?.translatesAutoresizingMaskIntoConstraints = false
        lbl3?.text = "Label 3"
        lbl3?.backgroundColor = UIColor.green
        lbl3?.translatesAutoresizingMaskIntoConstraints = false
        lbl4?.text = "Label 4"
        lbl4?.backgroundColor = UIColor.yellow
        lbl4?.translatesAutoresizingMaskIntoConstraints = false
        lbl5?.text = "Label 5"
        lbl5?.backgroundColor = UIColor.gray
        lbl5?.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(lbl1!)
        view.addSubview(lbl2!)
        view.addSubview(lbl3!)
        view.addSubview(lbl4!)
        view.addSubview(lbl5!)
        
        //        method1
        self.addConstraints()
        
        //method2
        //        self.addConstraints1()
        
    }
    
    func addConstraints()
    {
        let viewDict = ["Label1":lbl1, "Label2":lbl2,"Label3":lbl3,"Label4":lbl4,"Label5":lbl5]
        
        for lable in viewDict.keys
        {
            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(lable)]|", options:[], metrics:nil, views: viewDict as [String : Any]))
        }
        
        let metrics = ["labelHeight":88]
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[Label1(labelHeight@999)]-[Label2(labelHeight)]-[Label3(labelHeight)]-[Label4(labelHeight)]-[Label5(labelHeight)]-(>=10)-|", options: [], metrics: metrics, views:viewDict as [String : Any]))
        
    }
    
    func addConstraints1()
    {
        for lable in [lbl1,lbl2,lbl3,lbl4,lbl5]
        {
            lable?.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
            lable?.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            lable?.heightAnchor.constraint(equalToConstant:80).isActive = true
            
        }
    }
    
}

