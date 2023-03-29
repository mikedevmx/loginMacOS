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
    
    func addUser(_ user:User){
        users.append(user)
    }
    
    func login(_ username:String, _ password:String) ->  Bool {
        for user in users {
            return user.username == username && user.password == password
        }
        return false
    }
}
