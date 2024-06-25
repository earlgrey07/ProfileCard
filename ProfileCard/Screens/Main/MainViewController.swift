//
//  MainViewController.swift
//  ProfileCard
//
//  Created by Данил on 29.05.2024.
//  Copyright © 2024 earl-grey. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var genderBirthDateLabel: UILabel!
    @IBOutlet private weak var phoneLabel: UILabel!
    @IBOutlet private weak var emailLabel: UILabel!
    
    @IBOutlet private weak var photoIconImageView: UIImageView!
    @IBOutlet private weak var phoneIconImageView: UIImageView!
    @IBOutlet private weak var emailIconImageView: UIImageView!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        fillData()
    }
    
    //MARK: - Private
    
    private func configureUI() {
        let textColour = UIColor(named: "pc.text")
        let borderWidth = 5.0
        
        view.backgroundColor = UIColor(named: "pc.background")
        nameLabel.textColor = UIColor(named: "pc.title")
        genderBirthDateLabel.textColor = textColour
        phoneLabel.textColor = textColour
        emailLabel.textColor = textColour
        
        photoIconImageView.layer.cornerRadius = photoIconImageView.bounds.size.width * 0.5
        photoIconImageView.layer.borderWidth = borderWidth
        photoIconImageView.layer.borderColor = UIColor(named: "pc.content")?.cgColor
    }
    
    private func fillData() {
        nameLabel.text = "Daniil Zhorin"
        genderBirthDateLabel.text = "Male | Born 19.07.2000"
        
        photoIconImageView.image = UIImage(named: "photo")
        
        phoneLabel.text = "+7(930)008-52-93"
        emailLabel.text = "earl_grey07@icloud.com"
        
        phoneIconImageView.image = UIImage(named: "phone")
        emailIconImageView.image = UIImage(named: "email")
    }
}
