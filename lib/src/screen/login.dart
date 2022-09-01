import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:gojo_rental/src/screen/signup.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            // color: Colors.amber,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/images/ጎጆ.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 20),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Phone Number';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  // controller:  registerController.phonenumberTextcontroller,
                  // obscureText: !_passwordVisible, //This will obscure text dynamically
                  decoration: InputDecoration(
                    labelText: 'phone Number',
                    hintText: 'Enter your phone Number',
                    // Here is key idea
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 20),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Password';
                    }
                    // if(registerController.passwordTextcontroller!=controllercPassword.text){
                    //   return "Password does not match";
                    // }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  // controller: registerController.passwordTextcontroller,
                  obscureText:
                      !_passwordVisible, //This will obscure text dynamically
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    // Here is key idea
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(230, 0, 0, 0),
                child: TextButton(
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 15, color: Colors.black45),
                    ),
                    onPressed: () {}),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
                child: Container(
                  width: MediaQuery.of(context).size.width * .7,
                  height: MediaQuery.of(context).size.height * .06,
                  // color: Color.fromARGB(21, 10, 1, 37),

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 220, 126, 50)),
                    child: Text('LOGIN',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 250, 250, 250))),
                    onPressed: () {
                      //  registerController.registersupplier();
                    },
                  ),
                ),
              ),
              TextButton(
                  child: Text(
                    "Don't have an Account? SIGN UP",
                    style: TextStyle(fontSize: 15, color: Colors.black45),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const signup()),
                    );
                  }),
            ],
          ),
        ]),
      ),
    );
  }
}
