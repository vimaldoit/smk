import 'package:flutter/material.dart';
import 'package:skmcommerce/utils/constants.dart';

class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({super.key, required this.title});


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primarycolor.withOpacity(0.78), 
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: (){}, 
    child: Text(title, 
    style: const TextStyle(color: Colors.white),));
  }
}