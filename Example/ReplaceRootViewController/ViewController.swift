//
//  ViewController.swift
//  ReplaceRootViewController
//
//  Created by sushant on 03/06/2019.
//  Copyright (c) 2019 sushant. All rights reserved.
//

import Foundation
import UIKit
import ReplaceRootViewController

fileprivate var counter = 0
class ViewController: UIViewController {

    var me = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        counter = counter + 1
        me = counter

        print("(\(me)) Created ViewController")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doPresent(_ sender: Any) {
        let vc = UIStoryboard(name: "Presented", bundle: nil).instantiateInitialViewController()!

        self.present(vc, animated: true, completion: nil)
    }

    @IBAction func doMagic(_ sender: Any) {
        let vc = UIStoryboard(name: "Alternate", bundle: nil).instantiateInitialViewController()!

        if let window = view.window {
            window.set(rootViewController: vc)
        }
    }

    @IBAction func doReset(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!

        if let window = view.window {
            window.set(rootViewController: vc) { (completed) in
                print("Reset callback!")
            }
        }
    }

    deinit {
        print("(\(me)) Destroying ViewController")
    }
}

