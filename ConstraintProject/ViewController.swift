//
//  ViewController.swift
//  ConstraintProject
//
//  Created by Josue Hernandez Gonzalez on 10/31/17.
//  Copyright © 2017 Josue Hernandez Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Documentation
        //https://code.tutsplus.com/tutorials/introduction-to-the-visual-format-language--cms-22715
        
        //Create a new UIView
        let my_view = UIView();
        
        //set a background color
        my_view.backgroundColor = UIColor.orange;
        
        //Add the new View (view) into ContentView (IBLoulet)
        self.contentView.addSubview(my_view);
        
        //Remove constratints
        my_view.translatesAutoresizingMaskIntoConstraints = false
        
        //build dinctionary of views
        let viewsDict = ["my_view": my_view];
        
        //Horizontal constraints
        let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[my_view]|", options: [], metrics: nil, views: viewsDict)
        self.contentView.addConstraints(horizontalConstraints)
        
        //Vertical constraints
        let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[my_view]|", options: [], metrics: nil, views: viewsDict)
        self.contentView.addConstraints(verticalConstraints)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

