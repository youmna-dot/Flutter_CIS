//Write a password generator in Dart. Be creative with how you generate passwords - strong passwords have a mix of lowercase letters, uppercase letters, numbers, and symbols.
//The passwords should be random, generating a new password every time the user asks for a new password. Include your run-time code in a main method


// import 'dart:io';
import 'dart:math';

String generatePassword(int length) {
  String upperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  String lowerCase = "abcdefghijklmnopqrstuvwxyz";
  String number = "0123456789";
  String symbols = "!@#\$%^&*()_+-={}:<>?";
  String all = upperCase + lowerCase + number + symbols;

  Random random = Random();
  String password = "";

  for (int i = 0; i < length; i++) {
    password += all[random.nextInt(all.length)]; 
  }
  return password;
}

void main() {
  String password = generatePassword(12); 
  print("Generated Password: $password");
}
