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
        width: 90.w,
        height: 120,
        color: AppColors.backgroundColor,
        child: Row(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8)),
                child: Image.asset(
                  "assets/images/watch1.jpeg",
                  // width: 100,
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
                              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has ",
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
