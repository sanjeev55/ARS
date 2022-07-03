package ars

class LoginFilters {

    def filters = {
        allExceptUser(controller: 'user', action: 'login|dashBoard|forgetPassword|forgetPassword1|registerUser|resetPassword',invert:true) {
            before = {
                if (!session.user) {
                 def msg = "you should login"
                    redirect(controller: "user", action: "login")
                    return false
                }
            }
            after = { Map model ->

            }
            afterView = { Exception e ->
            }
        }
    }
}
