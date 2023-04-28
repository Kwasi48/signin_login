import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formkey1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signin') ,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    hintText: 'Please enter your first name',
                    icon: Icon(Icons.abc),
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Please enter a value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                    hintText: 'Please enter your Last name',
                    icon: Icon(Icons.abc),
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Please enter a value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Please enter your email',
                    icon: Icon(Icons.email),
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Please enter a value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: 'Please enter your password',
                    icon: Icon(Icons.key),
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Please enter a value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                    hintText: 'Please enter your password again',
                    icon: Icon(Icons.key),
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Please enter a value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Please enter your first name',
                    icon: Icon(Icons.phone),
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Please enter a value';
                    }
                    return null;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      if (_formkey1.currentState == null){
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please enter your info')));
                      }
                      if (_formkey1.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Registering user')));
                      }
                    },
                        child: const Text(
                          "Submit",
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
