//
//  ViewController.swift
//  I am Poor
//
//  Created by Sergey Azimov on 16.01.2023.
//

import UIKit

class ViewController: UIViewController {

    var label: UILabel = {
    var label = UILabel()
        label.text = "I Am Poor"
        label.font = UIFont(name: "Helvetica-Bold", size: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var imageLabel: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(named: "2")
        imageView.layer.cornerRadius = 20
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    setVIew()
   setContstrains()
        view.backgroundColor = #colorLiteral(red: 0.7191974521, green: 0.5471932292, blue: 1, alpha: 1)
    }

    func setVIew() {
        view.addSubview(label)
        view.addSubview(imageLabel)
      
    }
    
    func setContstrains() {
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        
            imageLabel.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            imageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageLabel.widthAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.43),
            imageLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.43),
            
        ])
        
    }

            }
