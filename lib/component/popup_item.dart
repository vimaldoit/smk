import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skmcommerce/component/triangle_widget.dart';
import 'package:skmcommerce/utils/constants.dart';

class PopUpItem extends StatelessWidget {
  const PopUpItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.graycolor)),
            width: 90.w,
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
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Rolex ",
                                maxLines: 2,
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
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 17.sp,
                                  color: AppColors.subTextColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "\u{20B9}3500",
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  color: AppColors.primarycolor,
                                  fontWeight: FontWeight.w600),
                            )
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
        ),
        Stack(
          children: [
            Transform.translate(
              offset: Offset(66.7.w, 10),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.offerbackgroundcolor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        topRight: Radius.circular(8))),
                height: 22,
                width: 50,
                child: Center(
                    child: Text(
                  "20% OFF",
                  style: TextStyle(
                      color: AppColors.backgroundColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 9),
                )),
              ),
            ),
            Transform.translate(
              offset: Offset(77.8.w, 31.6),
              child: CustomPaint(
                painter: TrianglePainter(
                  strokeColor: Color.fromARGB(255, 43, 129, 0),
                  strokeWidth: 10,
                  paintingStyle: PaintingStyle.fill,
                ),
                child: Container(
                  height: 10,
                  width: 10,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
