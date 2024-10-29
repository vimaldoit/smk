import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skmcommerce/utils/constants.dart';

class PopUpItem extends StatelessWidget {
  const PopUpItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey)),
        width: 90.w,
        height: 90,
        child: Row(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8)),
                child: Image.asset(
                  "assets/images/watch1.jpeg",
                  width: 90,
                  // height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Rolex",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: AppColors.textcolor,
                                fontSize: titleFontSize,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width - 200,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "variant : undefined ",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: AppColors.subTextColor,
                                  fontSize: secondayTitleFontSize),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          "\u{20B9}40000",
                          style: TextStyle(
                            color: AppColors.subTextColor,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("\u{20B9}3500")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
