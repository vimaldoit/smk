import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:remixicon/remixicon.dart';
import 'package:sizer/sizer.dart';
import 'package:skmcommerce/component/popup_item.dart';
import 'package:skmcommerce/utils/constants.dart';

class ProdectItem extends StatefulWidget {
  const ProdectItem({super.key});

  @override
  State<ProdectItem> createState() => _ProdectItemState();
}

class _ProdectItemState extends State<ProdectItem> {
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
                    SizedBox(
                      height: 4,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Spacer(),
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                          ),
                          child: Container(
                            color: AppColors.primarycolor,
                            width: 25,
                            height: 25,
                            child: Center(
                              child: Text(
                                "-",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        Container(
                            color: AppColors.secBackgroundColor,
                            width: 25,
                            height: 25,
                            child: Center(
                              child: TextFormField(
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 10))),
                            )),
                        Container(
                          color: AppColors.primarycolor,
                          width: 25,
                          height: 25,
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                addPopup(context);
                              },
                              child: Text(
                                "+",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> addPopup(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              contentPadding: EdgeInsets.zero,
              actionsPadding: EdgeInsets.zero,
              titlePadding: EdgeInsets.zero,
              iconPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.symmetric(horizontal: 20),
              // icon: Icon(
              //   Icons.question_mark,
              //   size: 40,
              // ),
              content: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Select Variant",
                          style: TextStyle(
                              color: AppColors.textcolor,
                              fontWeight: FontWeight.w500,
                              fontSize: titleFontSize),
                        ),
                        Spacer(),
                        InkWell(
                            onTap: () => Navigator.of(context).pop(),
                            child: Icon(Remix.close_line))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PopUpItem(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8))),
                          child: Center(child: Text("-")),
                        ),
                        Container(
                            height: 30, width: 60.w, child: TextFormField()),
                        Container(
                          child: Text("+"),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        // MaterialButton(
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(10),
                        //     ),
                        //     color: AppColors.redColor,
                        //     onPressed: this.clickEvent,
                        //     child: Text(
                        //       "Yes",
                        //       style: TextStyle(color: Colors.white),
                        //     )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ));
  }
}
