//
//  ViewController.swift
//  Hamburguesas en el mundo
//
//  Created by Luis Antonio Jimenez Velasco on 24/04/16.
//  Copyright © 2016 Luis Antonio Jimenez Velasco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombrePais: UILabel!

    @IBOutlet weak var nombreHamburguesa: UILabel!
    
    let paises = ColeccionDePaises()
    
    let hamburguesas = ColeccionDeHamburguesa()
    
    let colores = Colores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cambiarColor()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func quieroUnaHamburguesa(sender: AnyObject) {
        cambiarColor()
        self.nombrePais.text = self.paises.obtenPais()
        self.nombreHamburguesa.text = self.hamburguesas.obtenHamburguesa()
    }
    
    func cambiarColor() {
        let color = self.colores.obtenerColor()
        view.backgroundColor = color
        view.tintColor = color
    }

}

