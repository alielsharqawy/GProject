import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gproject/core/media_query_values.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SizedBox(
        width: context.width*0.16,
        height: context.height*0.1,
        child: TextFormField(
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          onSaved: (value) {},
          decoration: InputDecoration(
            hintText: '0',
            hintStyle: const TextStyle(
              color: Color(0xFF6A6A6A),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            filled: true,
            fillColor: const Color(0xFFF6F6F8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
          ),
          style: Theme.of(context).textTheme.titleLarge,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
    );
  }
}
