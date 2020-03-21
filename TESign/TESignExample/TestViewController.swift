//
//  TestViewController.swift
//  TESignExample
//
//  Created by User on 3/21/20.
//  Copyright © 2020 ThinhNguyen. All rights reserved.
//

import Foundation
import UIKit
import TESign

class TestViewController: UIViewController {
    private let esignView = TESignView(frame: .zero)
    private let clearBtn = UIButton(frame: .zero)
    private let doneBtn = UIButton(frame: .zero)
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
}

// MARK: - Action Functions
extension TestViewController {
    // MARK: onClearBtn
    @objc final private func onClearBtn(_ sender: UIButton?) {
        esignView.clear()
    }
    
    // MARK: onDoneBtn
    @objc final private func onDoneBtn(_ sender: UIButton?) {
        if let esignImage = esignView.getSignatureAsImage() {
            // Got the E-Sign image
            print("Got the E-Sign Image")
        }
    }
}

// MARK: - UI Functions
extension TestViewController {
    // MARK: setupUI
    final private func setupUI() {
        view.backgroundColor = .gray
        
        // MARK: esignView
        esignView.backgroundColor = .white
        view.addSubview(esignView)
        
        esignView.translatesAutoresizingMaskIntoConstraints = false
        
        let esignViewLeftConstraint = NSLayoutConstraint(item: esignView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 35)
        
        let esignViewRightConstraint = NSLayoutConstraint(item: esignView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: -35)
        
        let esignViewTopConstraint = NSLayoutConstraint(item: esignView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 90)
        
        let esignViewBottomConstraint = NSLayoutConstraint(item: esignView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: -120)
        
        view.addConstraints([esignViewTopConstraint, esignViewLeftConstraint, esignViewRightConstraint, esignViewBottomConstraint])
        
        // MARK: clearBtn
        clearBtn.addTarget(self, action: #selector(onClearBtn(_:)), for: .touchUpInside)
        clearBtn.setTitle("Clear", for: .normal)
        clearBtn.backgroundColor = .blue
        clearBtn.layer.cornerRadius = 10
        view.addSubview(clearBtn)
        
        clearBtn.translatesAutoresizingMaskIntoConstraints = false
        
        let clearBtnWidthConstraint = NSLayoutConstraint(item: clearBtn, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 150)
        
        let clearBtnHeightConstraint = NSLayoutConstraint(item: clearBtn, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50)
        
        let clearBtnCenterXConstraint = NSLayoutConstraint(item: clearBtn, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: -100)
        
        let clearBtnTopConstraint = NSLayoutConstraint(item: clearBtn, attribute: .top, relatedBy: .equal, toItem: esignView, attribute: .bottom, multiplier: 1, constant: 16)
        
        view.addConstraints([clearBtnWidthConstraint, clearBtnHeightConstraint, clearBtnCenterXConstraint, clearBtnTopConstraint])
        
        // MARK: doneBtn
        doneBtn.addTarget(self, action: #selector(onDoneBtn(_:)), for: .touchUpInside)
        doneBtn.setTitle("Done", for: .normal)
        doneBtn.backgroundColor = .blue
        doneBtn.layer.cornerRadius = 10
        view.addSubview(doneBtn)
        
        doneBtn.translatesAutoresizingMaskIntoConstraints = false
        
        let doneBtnWidthConstraint = NSLayoutConstraint(item: doneBtn, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 150)
        
        let doneBtnHeightConstraint = NSLayoutConstraint(item: doneBtn, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50)
        
        let doneBtnCenterXConstraint = NSLayoutConstraint(item: doneBtn, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 100)
        
        let doneBtnTopConstraint = NSLayoutConstraint(item: doneBtn, attribute: .top, relatedBy: .equal, toItem: esignView, attribute: .bottom, multiplier: 1, constant: 16)
        
        view.addConstraints([doneBtnWidthConstraint, doneBtnHeightConstraint, doneBtnCenterXConstraint, doneBtnTopConstraint])
    }
}
