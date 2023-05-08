import 'package:flutter/material.dart';

Widget custormBouton(
  BuildContext context, {
  String? title,
  Color? color,
  Function()? onTap,
  Color? colorText,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Text(
        title!,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: colorText,
        ),
      ),
    ),
  );
}

Widget title({
  String? name,
  Color? colorText,
  double? width,
}) {
  return Text(
    name!,
    style: TextStyle(
        fontWeight: FontWeight.bold, fontSize: width, color: colorText),
  );
}

Widget subTitle({
  String? name,
  Color? colorText,
  double? width,
}) {
  return Text(
    name!,
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: width, color: colorText),
  );
}

Widget custormTextField(
  BuildContext context,
  bool textObscur, {
  String? hintText,
  TextEditingController? controler,
  IconButton? iconButton,
  Key? key,
}) {
  return Container(
    key: key,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.white.withOpacity(0.2),
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: controler,
              obscureText: textObscur,
              style: const TextStyle(color: Colors.white, fontSize: 20),
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                fillColor: Colors.white.withOpacity(0.2),
                focusColor: Colors.white,
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.2),
                ),
              ),
            ),
          ),
          if (iconButton != null)
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                iconButton,
              ],
            )
        ],
      ),
    ),
  );
}
