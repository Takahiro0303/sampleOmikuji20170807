//
//  ViewController.swift
//  homeworkOmikuji
//
//  Created by takahiro tshuchida on 2017/09/03.
//  Copyright © 2017年 Takahiro Tshuchida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var islandView: UIImageView!
    
    @IBOutlet weak var countoryFlag: UIImageView!
    @IBOutlet weak var countoryFlag2: UIImageView!
    @IBOutlet weak var countoryFlag3: UIImageView!
    @IBOutlet weak var countoryFlog4: UIImageView!
    
    
    var island = ["Surigao","Camotes","Elnido","Bohol","Osulobu","Bantayan","Siquijor"]


    override func viewDidLoad() {
        super.viewDidLoad()
        let layer:CALayer = countoryFlag.layer
        let animation:CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation")
        animation.toValue = M_PI / 2.0
        animation.duration = 0.5           // 0.5秒で90度回転
        animation.repeatCount = MAXFLOAT;   // 無限に繰り返す
        animation.isCumulative = true;         // 効果を累積
        layer.add(animation, forKey: "ImageViewRotation")
        
        let layer2:CALayer = countoryFlag2.layer
        let animation2:CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation")
        animation2.toValue = M_PI / 2.0
        animation2.duration = 0.5           // 0.5秒で90度回転
        animation2.repeatCount = MAXFLOAT;   // 無限に繰り返す
        animation2.isCumulative = true;         // 効果を累積
        layer2.add(animation2, forKey: "ImageViewRotation")
        
        let layer3:CALayer = countoryFlag3.layer
        let animation3:CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation")
        animation3.toValue = M_PI / 2.0
        animation3.duration = 0.5           // 0.5秒で90度回転
        animation3.repeatCount = MAXFLOAT;   // 無限に繰り返す
        animation3.isCumulative = true;         // 効果を累積
        layer3.add(animation3, forKey: "ImageViewRotation")
        
        let layer4:CALayer = countoryFlog4.layer
        let animation4:CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation")
        animation4.toValue = M_PI / 2.0
        animation4.duration = 0.5           // 0.5秒で90度回転
        animation4.repeatCount = MAXFLOAT;   // 無限に繰り返す
        animation4.isCumulative = true;         // 効果を累積
        layer4.add(animation4, forKey: "ImageViewRotation")
        
        
    }

    @IBAction func tapStart(_ sender: UIButton) {
        
        let r = Int(arc4random()) % island.count
        
        //  ❶部品となるアラートを作成
        let alert = UIAlertController(title: "Your distination is", message: island[r], preferredStyle: .alert)
        
        
        //  ❷OKボタンを追加
        //   handler:OKボタンが押された時に行いたい処理を指定
        //        action in 処理
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in 
            if r == 0{
                self.islandView.image = UIImage(named: "cloud.jpg")
            }else if r == 1{
                self.islandView.image = UIImage(named: "star.jpg")
            }else if r == 2{
                self.islandView.image = UIImage(named: "elnido.jpg")
            }else if r == 3{
                self.islandView.image = UIImage(named: "tasha.jpg")
            }else if r == 4{
                self.islandView.image = UIImage(named: "shark.jpg")
            }else if r == 5{
                self.islandView.image = UIImage(named: "bantayan.jpg")
            }else{
                self.islandView.image = UIImage(named: "black.jpeg")
            }
        }))
        
        alert.addAction(UIAlertAction(
            title: "キャンセル",
            style: UIAlertActionStyle.cancel,
            handler: { action in
        }))

        
        //  ❸アラートを表示する
        present(alert,animated: true,completion: nil)

        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

