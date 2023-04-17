//
//  ViewController.swift
//  PayPalApp
//
 
 
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var moreBtn: UIButton!
    @IBOutlet weak var balanceView: UIView!
    @IBOutlet weak var homeView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareNavBarsAndStyling()
    }
    
    func prepareNavBarsAndStyling(){
        moreBtn.setTitle("", for: .normal)
        balanceView.layer.cornerRadius = CGFloat(5.0)
        homeView.layer.cornerRadius = CGFloat(5.0)
        balanceView.layer.shadowOffset = CGSize(width: 2, height: 1)
        balanceView.layer.shadowOpacity = 0.2
        balanceView.layer.shadowRadius = CGFloat(2.0)
        
        
        var rightBarImage = UIImage(named: "settings_icon")
        var leftBarImage = UIImage(named: "notifications_icon")
//        var profileImage = UIImage(named: "profile_image")
        rightBarImage = rightBarImage?.withRenderingMode(.alwaysOriginal)
        leftBarImage = leftBarImage?.withRenderingMode(.alwaysOriginal)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: rightBarImage, style: .plain, target: nil, action: nil)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: leftBarImage, style: .plain, target: nil, action: nil)
        if #available(iOS 13.0, *) {
            self.navigationItem.titleView = UIImageView(image: UIImage(systemName: "person.circle"))
        } else {
            // Fallback on earlier versions
        }
        
    }

}

