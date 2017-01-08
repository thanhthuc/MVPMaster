//
//  ViewController.swift
//  MVPMaster
//
//  Created by Nguyễn Thành Thực on 1/3/17.
//  Copyright © 2017 nguyen thanh thuc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, TalkToView {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var presenter: MainPresenter?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let person = Person(firstName: "Nguyen", lastName: "Thanh Thuc")
        let presenter = MainPresenter(view: self, person: person)
        self.presenter = presenter
        button.addTarget(self, action: #selector(didTap), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didTap() {
        self.presenter?.showTalkBadThing()
        self.presenter?.showTalkGreething()
    }
    
    func setTalk(badThing: String) {
        label.text = badThing
    }
    
    func setTalk(greething: String) {
        label.text = greething
    }

}

