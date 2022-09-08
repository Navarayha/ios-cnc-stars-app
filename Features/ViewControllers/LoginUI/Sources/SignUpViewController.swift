import UIKit
import Common
import CommonUI


public class SignUpViewController: UIViewController, UITextFieldDelegate {
    
    
    private lazy var nameTextField = CNCTextField(placeholder: "Name")
    private lazy var emailTextField = CNCTextField(placeholder: "E-mail")
    private lazy var passwordTextField = CNCTextField(placeholder: "Password")
    private lazy var confimPasswordTextField = CNCTextField(placeholder: "Confim Password")
    private lazy var createAccountButton = CNCButton(backgroundColor: .systemGreen, title: "Create Account")

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        configureNameTextField()
        configureEmailTextField()
        configurePasswordTextField()
        configureConfimPasswordTextField()
        configureCreateAccountButton()
        
    }
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    private func configureNameTextField() {
        view.addSubview(nameTextField)
        nameTextField.delegate = self
        
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            nameTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func configureEmailTextField() {
        view.addSubview(emailTextField)
        emailTextField.delegate = self
        
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 12),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            emailTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func configurePasswordTextField() {
        view.addSubview(passwordTextField)
        passwordTextField.delegate = self
        
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 12),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func configureConfimPasswordTextField() {
        view.addSubview(confimPasswordTextField)
        confimPasswordTextField.delegate = self
        
        NSLayoutConstraint.activate([
            confimPasswordTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 12),
            confimPasswordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            confimPasswordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            confimPasswordTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func configureCreateAccountButton() {
        view.addSubview(createAccountButton)
        createAccountButton.setTitle("Create Account", for: .normal)
        createAccountButton.addTarget(self, action: #selector(createAccountButtonPressed), for: .touchUpInside)
        createAccountButton.backgroundColor = .blue
        createAccountButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            createAccountButton.topAnchor.constraint(equalTo: confimPasswordTextField.bottomAnchor, constant: 12),
            createAccountButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            createAccountButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            createAccountButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func createAccountButtonPressed() {
        print("Button pressed")
    }
    
}

