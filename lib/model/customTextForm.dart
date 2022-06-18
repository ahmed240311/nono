import 'package:flutter/material.dart';

import 'customtext.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  // final String hint;
  final TextInputType type;
  // final Icon icon;
  final Widget icon;

  final  void Function(dynamic)? onSave;
  final FormFieldValidator<String>?  validator;

  CustomTextFormField({required this.text,  this.onSave, this.validator, required this.type, required this.icon});
  // bool _showpass = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:

      // Column(
      //   children: [
          // CustomText(
          //   // alignment: Alignment.topLeft,
          //   text: text,
          //   color: Colors.grey.shade900,
          // ),
          TextFormField(
            // obscureText: this._showpass,
            keyboardType:type,
            autocorrect: false,
            enableSuggestions: false,
            textAlign: TextAlign.right,
            onSaved: onSave,
            validator: validator,

            decoration: InputDecoration(
              suffixIcon: icon,
              // suffixIcon:
                // hintText: hint,
              labelText: text,
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),

              ),
              focusedBorder: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,


            ),
          )
        // ],
      // ),
    );
  }
}


// class CustomTextFormFieldHome extends StatelessWidget {
//   final String text;
//   final String hint;
//   final TextInputType type;
//   final TextEditingController controller;
//   final  void Function(dynamic)? onSave;
//   final FormFieldValidator<String>?  validator;
//
//   CustomTextFormFieldHome({required this.text, required this.hint, this.onSave, this.validator, required this.type, required this.controller});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child:
//
//         // Column(
//         //   children: [
//         // CustomText(
//         //   // alignment: Alignment.topLeft,
//         //   text: text,
//         //   color: Colors.grey.shade900,
//         // ),
//         TextFormField(
//           controller: controller,
//           keyboardType:type,
//           autocorrect: false,
//           enableSuggestions: false,
//           textAlign: TextAlign.right,
//           onSaved: onSave,
//           validator: validator,
//           decoration: InputDecoration(
//             hintText: hint,
//             filled: true,
//             fillColor: Colors.grey[200],
//             border: OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(20),
//             ),
//             focusedBorder: InputBorder.none,
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//               borderSide: BorderSide.none,
//             ),
//             errorBorder: InputBorder.none,
//             disabledBorder: InputBorder.none,
//
//
//           ),
//         )
//       // ],
//       // ),
//     );
//   }
// }
