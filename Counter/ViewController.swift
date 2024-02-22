//
//  ViewController.swift
//  Counter
//
//  Created by Александр on 21.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0 //создаем переменную для хранения значения счетчика

    @IBAction func buttonPush(_ sender: Any) {
    }
    @IBOutlet weak var buttonView: UIButton!
    @IBOutlet weak var labelView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //устанавливаем белый цвет фона контроллера
        view.backgroundColor = .white
        //устанавливаем текст метки
        labelView.text = "0"
        //устанавливаем размер шрифта
        labelView.font = .systemFont(ofSize: 42)
        //устанавливаем выравнивание текста по центру
        labelView.textAlignment = .center
        
        //устанавливаем заголовок кнопки
        buttonView.setTitle("PUSH", for: .normal)
        //устанавливаем цвет заголовка
        buttonView.setTitleColor(.white, for: .normal)
        //устанавливаем цвет фона
        buttonView.backgroundColor = .blue
        //делаем закругление углов
        buttonView.layer.cornerRadius = 10
        
        //добавляем метку и кнопку в иерархию представлений
        view.addSubview(labelView)
        view.addSubview(buttonView)
        //добавляем действие кнопки
        buttonView.addTarget(self, action:  #selector(increment), for: .touchUpInside)
        
    }
    //создаем метод который увеличивает значение счетчика на 1 при нажатии
        @objc func increment() {
            count += 1 // Увеличиваем значение счетчика на 1
            labelView.text = "\(count)"
            //обновляем текст метки
        }
    }



