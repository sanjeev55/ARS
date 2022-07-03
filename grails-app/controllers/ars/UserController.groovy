package ars

import java.security.MessageDigest

class UserController {

    /*def index() { }*/

    def login(){


            render(view: "login");
    }

    def registerUser() {
        def name = params.name;
        def email = params.email;
        def password = generateMD5(params.password)
        def rpassword=generateMD5(params.rpassword)
        println "email = $email"
        def role = "user";
        if(password==rpassword) {
            def existingUser = User.findByEmail(email)
            if (name == "" || email == "" || password == "") {
                redirect(action: "login")
            } else {
                if (existingUser != null) {
                    redirect(action: "login")
                } else {


                    User user = new User();

                    user.name = name;
                    user.email = email;
                    user.password = password
                    user.role = role;

                    user.save();
                    session["user"] = user

                    render(view: "dashBoard", model: [u: user]);
                }
            }
        }else{
            redirect(action: "login")
        }
    }

    def dashBoard() {

        def email = params.email;
        println "email = $email"
        def password = generateMD5(params.password);
        println "password = $password"
        
        
        if (email == "" || password == "") {

            redirect(action: "login")
        } else {


            def user = User.findByEmailAndPassword(email, password);
            if (user != null) {

                def role = user.role;


                println("Role:" + role);

                session["user"] = user

                render(view: "dashBoard", model: [u: user])


            } else {
//
                redirect(action: "login")

            }

        }
    }
    def viewUser(){
        def user=User.findAll();

        render(view: "viewUser",model:[u:user])
    }
    def logOut(){
        session.invalidate();

        redirect(action: "login");
    }
    def forgetPassword(){
        render(view:"forgetPassword")
    }
    def forgetPassword1(){
        def email=params.email;
        def user=User.findByEmail(email);

        if(user!=null){

            render(view:"viewPassword",model: [u:user])

        }
        else{
            redirect(action: "forgetPassword")
        }
    }
    def info(){
        def user =session.user;

        render(view: "info",model: [u:user])




    }
    def backDashboard(){
        def user=session.user


        render(view: "dashBoard",model:[u:user])
    }
    def generateMD5(String s) {
        MessageDigest digest = MessageDigest.getInstance("MD5")
        digest.update(s.bytes);
        new BigInteger(1, digest.digest()).toString(16).padLeft(32, '0')
    }
    def resetPassword(){
        def password=generateMD5(params.password)
        def rpassword=generateMD5(params.rpassword)
        def email=params.email;
        def user = User.findByEmail(email)
        if(password==rpassword) {

            user.password = password;

            user.save()

            redirect(action: "login")
        }
        else{
            render(view: "viewPassword", model:[u:user])
        }


    }

}
