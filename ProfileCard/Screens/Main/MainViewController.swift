//
//  MainViewController.swift
//  ProfileCard
//
//  Created by Данил on 29.05.2024.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak private var nameTitle: UILabel!
    @IBOutlet weak private var subtitle: UILabel!
    @IBOutlet weak private var phoneTitle: UILabel!
    @IBOutlet weak private var emailTitle: UILabel!
    
    @IBOutlet weak private var photo: UIImageView!
    @IBOutlet weak private var phoneIcon: UIImageView!
    @IBOutlet weak private var emailIcon: UIImageView!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        fillData()
    }
    
    //MARK: - Private
    private func configureUI() {
        nameTitle.text = "Daniil Zhorin"
        subtitle.text = "Male | Born 19.07.2000"
        phoneTitle.text = "+7(930)008-52-93"
        emailTitle.text = "earl_grey07@icloud.com"
        
        view.backgroundColor = UIColor(named: "pc.background")
        nameTitle.textColor = UIColor(named: "pc.title")
        subtitle.textColor = UIColor(named: "pc.text")
        phoneTitle.textColor = UIColor(named: "pc.text")
        emailTitle.textColor = UIColor(named: "pc.text")
        
        photo.layer.cornerRadius = 90
        photo.layer.borderWidth = 5
        photo.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 100)
    }
    private func fillData() {
        photo.image = UIImage(named: "photo")
        phoneIcon.image = UIImage(named: "phone")
        emailIcon.image = UIImage(named: "email")
    }
}
