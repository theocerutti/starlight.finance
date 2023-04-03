import "package:flutter/material.dart";

class DropdownButton extends StatefulWidget {
  const DropdownButton({super.key, required String values});

  @override
  State<DropdownButton> createState() => _DropdownButtonState();
}

class _DropdownButtonState extends State<DropdownButton> {
  void onClickOption() {}

  void onClickDropdown() {}

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
