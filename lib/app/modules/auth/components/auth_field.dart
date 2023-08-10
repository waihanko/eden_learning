import 'package:eden_learning_app/app/modules/widgets/containers/primary_container.dart';
import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String hintText;
  const AuthField({
    required this.controller,
    required this.hintText,
    this.onChanged,
    this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
        ),
      ),
    );
  }
}
