import 'dart:math';

import 'package:X_Market/core/constans.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Textfeild extends StatefulWidget {
  Textfeild({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
  });
  final String label;
  final String hint;
  final TextEditingController controller;

  @override
  State<Textfeild> createState() => _TextfeildState();
}

class _TextfeildState extends State<Textfeild> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: KMainColor, width: 5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: KMainColor, width: 5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: KMainColor, width: 7.5),
        ),
      ),
    );
  }
}

class confirmPassword extends StatefulWidget {
  final String passlabel;
  final String passhint;
  final TextEditingController controller;
  confirmPassword({
    super.key,
    required this.passlabel,
    required this.passhint,
    required this.controller,
  });

  @override
  State<confirmPassword> createState() => _confirmPasswordState();
}

class _confirmPasswordState extends State<confirmPassword> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: widget.passlabel,
        hintText: widget.passhint,
        suffixIcon: IconButton(
          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: KMainColor, width: 5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: KMainColor, width: 5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: KMainColor, width: 7.5),
        ),
      ),
    );
  }
}