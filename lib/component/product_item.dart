import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  TextEditingController _countController = TextEditingController();

  cartCoutIncrease() {
    setState(() {
      _countController.text = (int.parse(_countController.text) + 1).toString();
    });
  }

  cartCoutDecrease() {
    setState(() {
      if (_countController.text != "0" && _countController.text != "") {
        _countController.text =
            (int.parse(_countController.text) - 1).toString();
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _countController.text = "1";
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ClipRRect(
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
                          SizedBox(
                            height: 10,
                          ),
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
                                    decoration: TextDecoration.lineThrough,
                                    color: AppColors.subTextColor,
                                    fontSize: 17.sp,
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
                                  color: AppColors.graycolor,
                                  width: 25,
                                  height: 25,
                                  child: Center(
                                    child: TextFormField(
                                        readOnly: true,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 10))),
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
          ),
        ),
        Transform.translate(
          offset: Offset(85.w, 10),
          child: Container(
            height: 25,
            width: 45,
            color: AppColors.offerbackgroundcolor,
            child: Center(
                child: Text(
              "20%",
              style: TextStyle(
                  color: AppColors.backgroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            )),
          ),
        ),
        Transform.translate(
          offset: Offset(92.w, 35),
          child: ClipPath(
            clipper: CustomTriangleClipper(),
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topRight,
                  colors: [Color(0xffF25D50), Color(0xffF2BB77)],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Future<dynamic> addPopup(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              contentPadding: EdgeInsets.zero,
              actionsPadding: EdgeInsets.zero,
              titlePadding: EdgeInsets.zero,
              iconPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.symmetric(horizontal: 20),
              // icon: Icon(
              //   Icons.question_mark,
              //   size: 40,
              // ),
              content: Container(
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
                              fontWeight: FontWeight.w600,
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
                        InkWell(
                          onTap: () => cartCoutDecrease(),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.graycolor),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8))),
                            child: Center(
                                child: Text(
                              "-",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.graycolor)),
                            height: 30,
                            width: 60.w,
                            child: Center(
                              child: TextFormField(
                                  controller: _countController,
                                  textAlignVertical: TextAlignVertical.center,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    isCollapsed: true,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10),
                                    border: InputBorder.none,
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColors.primarycolor,
                                      ),
                                    ),
                                  )),
                            )),
                        InkWell(
                          onTap: () => cartCoutIncrease(),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.graycolor),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8))),
                            child: Center(
                                child: Text(
                              "+",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side:
                                  const BorderSide(color: AppColors.graycolor),
                            ),
                            color: AppColors.backgroundColor,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: AppColors.primarycolor,
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Remix.add_line,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Add to Cart",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )),
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

class CustomTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.height, size.width);
    path.lineTo(0, size.width);

    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
