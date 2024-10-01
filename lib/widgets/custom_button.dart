import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.ontap, required this.pointNum});
  final void Function()ontap;
 final String  pointNum;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 85,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.amber[700], borderRadius: BorderRadius.circular(4)),
        child: Center(child: Text(pointNum)),
      ),
    );
  }
}
