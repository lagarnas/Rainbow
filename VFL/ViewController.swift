//
//  ViewController.swift
//  VFL
//
//  Created by Анастасия Лагарникова on 19.02.2020.
//  Copyright © 2020 lagarnas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = .red
        label1.text = "RICHARD"
        label1.textAlignment = .center
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = .orange
        label2.text = "OF"
        label2.textAlignment = .center
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = .yellow
        label3.text = "YORK"
        label3.textAlignment = .center
        label3.sizeToFit()
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = .green
        label4.text = "GAVE"
        label4.textAlignment = .center
        label4.sizeToFit()
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = .blue
        label5.text = "BATTLE"
        label5.textAlignment = .center
        label5.sizeToFit()
        
        let label6 = UILabel()
        label6.translatesAutoresizingMaskIntoConstraints = false
        label6.backgroundColor = .systemIndigo
        label6.text = "IN"
        label6.textAlignment = .center
        label6.sizeToFit()
        
        let label7 = UILabel()
        label7.translatesAutoresizingMaskIntoConstraints = false
        label7.backgroundColor = .purple
        label7.text = "VAIN"
        label7.textAlignment = .center
        label7.sizeToFit()
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        view.addSubview(label6)
        view.addSubview(label7)
        
        
        let viewDictionary = ["label1" : label1,
                              "label2" : label2,
                              "label3" : label3,
                              "label4" : label4,
                              "label5" : label5,
                              "label6" : label6,
                              "label7" : label7]
        
        for label in viewDictionary.keys {
            //horizontally
            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewDictionary))
        }
        //vertically
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:
            //[label1]-[label2] space 10 points by default
            "V:|-[label1][label2][label3][label4][label5][label6][label7]", options: [], metrics: nil, views: viewDictionary))

    }


}

