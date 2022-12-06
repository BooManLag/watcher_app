import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class LoginRegisterCheck {
  static String validateEmail(String email) {
    if (email.isEmpty) {
      return 'Email cannot be empty';
    } else if (!EmailValidator.validate(email)) {
      return 'Invalid email address';
    }
    return '';
  }

  static String validateUsername(String username) {
    if (username.isEmpty) {
      return 'Username cannot be empty';
    }
    return '';
  }

  static String validatePassword(String password) {
    if (password.isEmpty) {
      return 'Password cannot be empty';
    } else if (password.length < 6) {
      return 'Password must contain 6 or more characters';
    }
    return '';
  }

  static String validatePasswords(String password, String confirmPassword) {
    if (!(password == confirmPassword)) {
      return 'Passwords do not match';
    }
    return '';
  }
}
