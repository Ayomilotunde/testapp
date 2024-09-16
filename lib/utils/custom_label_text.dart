import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomLabelInputText extends StatelessWidget {
  const CustomLabelInputText({
    super.key,
    required this.label,
    this.controller,
    this.placeholder,
    this.counterText,
    this.maxLength,
    this.maxLines,
    required this.keyboardType,
    required this.inputAction,
    this.validate,
    this.enabled,
    this.obscureText = false,
    this.readOnly = false,
    this.labelColor,
    this.borderColor,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.sentences,
    this.suffixIcon,
    this.prefixIcon,
    this.onKeyUp,
  });

  final String label;
  final TextEditingController? controller;
  final String? placeholder;
  final String? counterText;
  final int? maxLength;
  final int? maxLines;
  final TextInputType keyboardType;
  final TextInputAction inputAction;
  final FormFieldValidator<String>? validate;
  final bool? enabled;
  final bool obscureText;
  final bool readOnly;
  final Color? labelColor;
  final Color? borderColor;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String)? onKeyUp;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: labelColor ?? Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        TextFormField(
          onChanged: onKeyUp,
          controller: controller,
          validator: validate,
          textInputAction: inputAction,
          keyboardType: keyboardType,
          maxLength: maxLength,
          maxLines: maxLines,
          decoration: InputDecoration(
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 13.0,
                horizontal: 10.0,
              ),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(3)),
              hintText: placeholder,
              prefixIcon: prefixIcon,
              counterText: counterText,
              hintStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              // border: InputBorder.none,
              suffixIcon: suffixIcon,
              suffixIconConstraints: const BoxConstraints(maxHeight: 30, maxWidth: 35, minHeight: 20)),
          readOnly: readOnly,
          enabled: enabled,
          cursorColor: Colors.brown,
          inputFormatters: inputFormatters,
          textCapitalization: textCapitalization,
          obscureText: obscureText,
        ),
      ],
    );
  }
}
