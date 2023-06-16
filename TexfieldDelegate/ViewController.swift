//
//  ViewController.swift
//  TexfieldDelegate
//
//  Created by Темирлан Асанбеков on 15/6/23.
//

import UIKit

class ViewController: UIViewController {


    var myTextField = UITextField()
    override func viewDidLoad() {
        super.viewDidLoad()
       setupTF()
        myTextField.delegate = self
    }

    func setupTF() {
        let textFieldFrame = CGRect(x: 0, y: 0, width: 200, height: 30)
        
        myTextField = UITextField(frame: textFieldFrame)
        myTextField.borderStyle = .roundedRect
        myTextField.contentVerticalAlignment = .center
        myTextField.placeholder = "Huylo"
        myTextField.center = self.view.center
        view.addSubview(self.myTextField)
    }
}

extension ViewController: UITextFieldDelegate {
    //MARK: Управление редактированием
    
    //Запрашивает делегата, начинать ли редактирование в указанном текстовом поле.
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldBeginEditing = это я решаю можно ли редактировать")
        return true
    }
    //Сообщает делегату, когда начинается редактирование в указанном текстовом поле.
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing = внимание началось редактирование")
    }
    //Запрашивает делегата, следует ли прекратить редактирование в указанном текстовом поле.
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing = внимание закончилось редактирование")
        return true
    }
    //Сообщает делегату, когда редактирование останавливается для указанного текстового поля, и причину, по которой оно остановилось.
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        print("textFieldDidEndEditing")
    }
    //Сообщает делегату, когда редактирование указанного текстового поля прекращается.
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing = это я")
    }
    
    //MARK: Редактирование текста в текстовом поле
    //Запрашивает делегата, следует ли изменять указанный текст.
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("shouldChangeCharactersIn = вы ввели = \(string)")
        return true
    }
    //Запрашивает делегата, следует ли удалять текущее содержимое текстового поля.
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("textFieldShouldClear = ты что то очистил")
        return true
    }
    //Запрашивает делегата, обрабатывать ли нажатие кнопки возврата для текстового поля.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn = хотите убрать клавиатуру?")
        if textField == myTextField {
            self.myTextField.resignFirstResponder()
        }
        return true
    }
    
    //MARK: Управление выделением текста
    //Сообщает делегату, когда изменяется выделение текста в указанном текстовом поле.
    func textFieldDidChangeSelection(_ textField: UITextField) {
        print("textFieldDidChangeSelection = это я")
    }
    //hello
}
