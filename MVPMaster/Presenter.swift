//
//  Presenter.swift
//  MVPMaster
//
//  Created by Nguyễn Thành Thực on 1/3/17.
//  Copyright © 2017 nguyen thanh thuc. All rights reserved.
//

import UIKit

protocol TalkToView: class {
    func setTalk(greething: String)
    func setTalk(badThing: String)
}

protocol TalkViewPresenter {
    init(view: TalkToView, person: Person)
    func showTalkGreething()
    func showTalkBadThing()
}

class MainPresenter: TalkViewPresenter {
    
    unowned let view: TalkToView
    var person: Person
    
    internal required init(view: TalkToView, person: Person) {
        self.view = view
        self.person = person
    }
    
    internal func showTalkGreething() {
        let goodthing = "very good" + person.firstName + person.lastName
        view.setTalk(badThing: goodthing)
    }
    
    internal func showTalkBadThing() {
        let badthing = "very bad" + person.firstName + person.lastName
        view.setTalk(badThing: badthing)
    }
    
    

    
}
