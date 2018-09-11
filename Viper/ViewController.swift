//
//  ViewController.swift
//  Viper
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addViper(_ sender: Any) {

        let viperViewController = ViperViewController(nibName: "ViperViewController", bundle: nil)
        let configurator = ViperModuleConfigurator()
        
        configurator.configureModuleForViewInput(viewInput: viperViewController)
        navigationController?.pushViewController(viperViewController, animated: true)
    }
}

