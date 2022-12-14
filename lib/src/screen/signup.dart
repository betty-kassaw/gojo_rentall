import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:gojo_rental/src/screen/login.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
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
                      return 'Please Enter First Name';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  // controller: registerController.firstnameTextcontroller,
                  // obscureText: !_passwordVisible, //This will obscure text dynamically
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    hintText: 'Enter your Full Name',
                    // Here is key idea
                  ),
                ),
              ),
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
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
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
                    labelText: 'confirm Password',
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
                padding: const EdgeInsets.fromLTRB(8, 25, 8, 8),
                child: Container(
                  width: MediaQuery.of(context).size.width * .7,
                  height: MediaQuery.of(context).size.height * .06,
                  // color: Color.fromARGB(21, 10, 1, 37),

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 220, 126, 50)),
                    child: Text('SIGN UP',
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
                    "Already have Account? LOG IN",
                    style: TextStyle(fontSize: 15, color: Colors.black45),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const login()),
                    );
                  }),
            ],
          ),
        ]),
      ),
    );
  }
}
