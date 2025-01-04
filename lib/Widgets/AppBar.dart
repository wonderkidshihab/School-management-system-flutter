import 'package:flutter/material.dart';

class CommonAppBar extends AppBar {
  final String titleString;
  final bool menuenabled;
  final bool notificationenabled;
  final VoidCallback ontap;
  CommonAppBar({
    super.key,
    required this.titleString,
    required this.menuenabled,
    required this.notificationenabled,
    required this.ontap,
  }) : super(
          title: Text(
            "${titleString}",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: menuenabled == true
              ? IconButton(
                  color: Colors.black,
                  onPressed: ontap,
                  icon: Icon(
                    Icons.menu,
                  ),
                )
              : null,
          actions: [
            notificationenabled == true
                ? InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/notification.png",
                      width: 35,
                    ),
                  )
                : SizedBox(
                    width: 1,
                  ),
          ],
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        );
}
