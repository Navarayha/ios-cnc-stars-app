
import UIKit
import Common
import CommonUI

public class LoginViewController: UIViewController {
    
    public var delegate: LoginDelegate!
    
    var loginTextField = CNCTextField(placeholder: "Login")
    var passwordTextField = CNCTextField(placeholder: "Password")
    var loginButton = CNCButton(backgroundColor: .systemGreen, title: "Login")
    var registerButton = CNCButton(backgroundColor: .blue, title: "Register")
    var appLogoImage = CNCAppLogo(image: CommonUIAsset.logo.image)
    

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        print(Util.doStuff())
        
        configureAppLogoImage()
        configureLoginTextField()
        configurePasswordTextField()
        configureLoginButton()
        configureRegisterButton()
        
    }
    
    
    func configureAppLogoImage() {
        view.addSubview(appLogoImage)
        appLogoImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            appLogoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            appLogoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            appLogoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            appLogoImage.heightAnchor.constraint(equalToConstant: appLogoImage.bounds.width - 150)

        ])
    }
    
    
    
    func configureLoginTextField() {
        view.addSubview(loginTextField)
        loginTextField.delegate = self
        
        NSLayoutConstraint.activate([
            loginTextField.topAnchor.constraint(equalTo: appLogoImage.bottomAnchor, constant: 12),
            loginTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            loginTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            loginTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configurePasswordTextField() {
        view.addSubview(passwordTextField)
        passwordTextField.delegate = self
        
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 12),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configureLoginButton() {
        view.addSubview(loginButton)
        loginButton.setTitle("Login", for: .normal)
        loginButton.addTarget(self, action: #selector(loginPressed), for: .touchUpInside)
        loginButton.backgroundColor = .blue
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 12),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configureRegisterButton() {
        view.addSubview(registerButton)
        registerButton.setTitle("Register", for: .normal)
        registerButton.setTitleColor(.blue, for: .normal)
        registerButton.addTarget(self, action: #selector(registerPressed), for: .touchUpInside)
        registerButton.backgroundColor = .clear
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 12),
            registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            registerButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func loginPressed() {
        delegate.login(login: loginTextField.text ?? "",
                       password: passwordTextField.text ?? "")
    }
    
    @objc func registerPressed() {
        delegate.login(login: loginTextField.text ?? "",
                       password: passwordTextField.text ?? "")
    }

}

extension LoginViewController: UITextFieldDelegate {
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
}

