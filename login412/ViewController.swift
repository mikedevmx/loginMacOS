import Cocoa

class ViewController: NSViewController {

var usuario = User(<#T##username: String##String#>, <#T##password: String##String#>)


}

class User{
    var username:String
    var password:String
    
    init(_ username:String, _ password:String) {
        self.username = username
        self.password = password
    }
    
    
}

class LoginController{
    var users = [User]()
    
    func addUSer(user:User){
        users.append(user)
    }
    
    func login(username:String, password:String) -> Bool {
        for user in users {
            if user.username == username && user.password == password{
                return true
            }
        }
        return false
    }
}

/*
let loginController = LoginController()

let user1 = User("MikeGomez", "123tamarindo")
let user2 = User("FHP", "fhpHacker")


loginController.addUSer(user: user1)
loginController.addUSer(user: user2)


let loginResult = loginController.login(username: "MikeGomez", password: "12tamarindo")



if loginResult{
    print("Login successful")
}
else{
    print("login failed!")
}
*/
