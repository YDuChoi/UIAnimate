//
//  ViewController.swift
//  UIAnimate
//
//  Created by D7703_28 on 2018. 4. 17..
//  Copyright © 2018년 YDuChoi. All rights reserved.
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


    @IBAction func buttonPressed(_ sender: Any) {
        
       let myAlert =  UIAlertController(title: "알림", message: "설정한 시간이 되었습니다.!", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default, handler: {(myaction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.red
        })
        
        let test = UIAlertAction(title: "중간", style: .default, handler: {(myaction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.green
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
            myAlert.addAction(okAction)
            myAlert.addAction(cancelAction)
            myAlert.addAction(test)
            present(myAlert, animated: true, completion: nil)

    }
}

