
import 'package:flutter/material.dart';
import 'package:vive/utils/styles.dart';

class CustomCheckRow extends StatefulWidget {
  const CustomCheckRow({Key? key}) : super(key: key);

  @override
  _CustomCheckRowState createState() => _CustomCheckRowState();
}

class _CustomCheckRowState extends State<CustomCheckRow> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Checkbox(
            value: _isChecked,
            activeColor: primaryColor(), // Aquí se establece el color del checkbox
            onChanged: (bool? value) {
              setState(() {
                _isChecked = value ?? false;
              });
            },
          ),
          const Text(
            'Mantener sesión iniciada',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
