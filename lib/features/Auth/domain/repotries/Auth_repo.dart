import 'package:flutter/material.dart';

abstract class AuthRepo {
  Future loginwithgoogle();
  Future loginwithfacebook();
  Future completeinformation({@required String email, @required String password}); 
}
