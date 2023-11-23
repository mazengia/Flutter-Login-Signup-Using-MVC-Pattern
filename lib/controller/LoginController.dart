import 'package:flutter/material.dart';
import '../model/AuthModel.dart';

class LoginController {
  final AuthModel _authModel = AuthModel();

  void handleLogin(BuildContext context, String username, String password) async {
    print("userName="+username);
    print("password="+password);
    bool isAuthenticated = await _authModel.login(username, password);
    if (isAuthenticated) {
      print("authenticated");
      // Navigate to the home page
      // Example: Navigator.pushReplacementNamed(context, '/home');
    } else {

      print("authenticated");
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid username or password'),
        ),
      );
    }
  }
}
