//
//  signupPage.swift
//  BetterEnglish
//
//  Created by Kavindu Nallaperuma on 18/3/2023.
//

import SwiftUI
import Firebase
import FirebaseDatabase

struct signupPage: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    @State var username: String = ""
    @State var isLoggingIn: Bool = false
    @State var showAlert = false
    @State var alertMessage = ""
    @State var signupSuccessful = false
    
    var body: some View {
        Group{
            VStack {
                Text("Create an account")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.all, 12.0)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.bottom, 30)
                
                Text("Username")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.all, 12.0)
                    .padding(.bottom, -30)
                
                TextField("Username", text: $username)
                    .padding(.all)
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .frame(height: 75)
                    .shadow(radius: 2)
                    .padding(.all, 12.0)
                
                Text("Email Address")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.all, 12.0)
                    .padding(.top, -10)
                    .padding(.bottom, -30)
       
                TextField("Email Address", text: $email)
                    .padding(.all)
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .frame(height: 75)
                    .shadow(radius: 2)
                    .padding(.all, 12.0)
                
                Text("Create a password")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.all, 12.0)
                    .padding(.top, -10)
                    .padding(.bottom, -30)
                
                SecureField("Password", text: $password)
                    .padding(.all)
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .frame(height: 75)
                    .shadow(radius: 2)
                    .padding(.all, 12.0)
                
                Text("Confirm your password")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.all, 12.0)
                    .padding(.top, -10)
                    .padding(.bottom, -30)
                
                SecureField("Confirm Password", text: $confirmPassword)
                    .padding(.all)
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .frame(height: 75)
                    .shadow(radius: 2)
                    .padding(.all, 12.0)
                    .padding(.bottom, 50)
              
                Button(action: {
                    signup()
                }) {
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color.black)
                .cornerRadius(5.0)
                .shadow(radius: 2)
                .padding(.all, 12.0)
                
            }
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Alert"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            })
            
            
            NavigationLink(destination: loginPage(), isActive: $signupSuccessful) {
                EmptyView()
            }
            .hidden()
        }
        .padding()
    }
    
    func signup() {
        guard !username.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            self.alertMessage = "Please enter a username."
            self.showAlert.toggle()
            return
        }
        
        guard !email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            self.alertMessage = "Please enter an email address."
            self.showAlert.toggle()
            return
        }
        
        guard !password.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            self.alertMessage = "Please enter a password."
            self.showAlert.toggle()
            return
        }
        
        guard !confirmPassword.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            self.alertMessage = "Please confirm your password."
            self.showAlert.toggle()
            return
        }
        
        guard password == confirmPassword else {
            self.alertMessage = "Passwords do not match."
            self.showAlert.toggle()
            return
        }
        
        let ref = Database.database().reference().child("users")
        ref.queryOrdered(byChild: "username").queryEqual(toValue: username.lowercased()).observeSingleEvent(of: .value, with: { snapshot in
            if snapshot.exists() {
                self.alertMessage = "Username already in use."
                self.showAlert.toggle()
            } else {
                Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
                    if let error = error {
                        self.alertMessage = error.localizedDescription
                        self.showAlert.toggle()
                        print(error.localizedDescription)
                    } else if let result = result {
                        let user = Auth.auth().currentUser
                        if let user = user {
                            let changeRequest = user.createProfileChangeRequest()
                            changeRequest.displayName = username
                            changeRequest.commitChanges(completion: { (error) in
                                if let error = error {
                                    self.alertMessage = error.localizedDescription
                                    self.showAlert.toggle()
                                    print(error.localizedDescription)
                                } else {
                                    ref.child(user.uid).setValue(["email": email.lowercased(), "username": username.lowercased()])
                                    self.signupSuccessful = true
                                }
                            })
                        }
                    }
                }
            }
        })
    }
}
extension String {
    var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }
}
struct signupPage_Previews: PreviewProvider {
    static var previews: some View {
        signupPage()
    }
}

