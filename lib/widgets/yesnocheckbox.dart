import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YesNoCheckbox extends StatefulWidget {
  final String label;
  final ValueChanged<bool> onChanged;
  final bool initialValue;

  const YesNoCheckbox({
    required this.label,
    required this.onChanged,
    this.initialValue = false,
  });

  @override
  _YesNoCheckboxState createState() => _YesNoCheckboxState();
}

class _YesNoCheckboxState extends State<YesNoCheckbox> {
  bool _value = false;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _value,
          onChanged: (bool? value) {
            setState(() {
              _value = value ?? false;
              if (_value == false) {
                widget.onChanged(false);
              }
            });
          },
        ),
        Text(widget.label),
      ],
    );
  }
}
