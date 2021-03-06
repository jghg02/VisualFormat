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
        
        //Create a green View
        let green_view = UIView();
        
        //set a background color
        my_view.backgroundColor = UIColor.orange;
        
        //Set background color to the Green View.
        green_view.backgroundColor = UIColor.green;
        
        //Add the new View (view) into ContentView (IBLoulet)
        self.contentView.addSubview(my_view);
        
        //Add green view to contentView
        self.contentView.addSubview(green_view);
        
        //Remove constratints
        my_view.translatesAutoresizingMaskIntoConstraints = false;
        green_view.translatesAutoresizingMaskIntoConstraints = false;
        
        //build dinctionary of views
        let viewsDict = ["my_view": my_view,"green_view":green_view];
        
        //Horizontal constraints
        let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[my_view]|", options: [], metrics: nil, views: viewsDict)
        self.contentView.addConstraints(horizontalConstraints)
        
        //Vertical constraints
        // V:|[my_view]-0-[green_view]| la separacion entre my_view y green_view es de 0
        // V:|[my_view]| solo el constraint aplica a my_view y la nueva view (green_view) se coloca por encima
        // y con los constraints que se le creen. 
        let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[my_view]-0-[green_view]|", options: [], metrics: nil, views: viewsDict)
        self.contentView.addConstraints(verticalConstraints)
        
        //Constraint Vrtical to the green_view
        let verticalConstraintsGreen = NSLayoutConstraint.constraints(withVisualFormat: "V:|[my_view]-10-[green_view(100)]|", options: [], metrics: nil, views: viewsDict);
        self.contentView.addConstraints(verticalConstraintsGreen);
        
        // Contraint Horizontal to the green_view
        let horizontalConstraintsGreen = NSLayoutConstraint.constraints(withVisualFormat: "H:|[green_view]|", options: [], metrics: nil, views: viewsDict)
        self.contentView.addConstraints(horizontalConstraintsGreen)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

