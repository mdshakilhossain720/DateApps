
import 'package:flutter/material.dart';

class NarrowAppBar extends StatelessWidget  implements PreferredSizeWidget {
  final Widget leading, trailing;

  NarrowAppBar({  required this.leading, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          bottom: 16,
        ),
        child: Row(
          children: <Widget>[
            leading,
            Spacer(),
            trailing,
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(40);
}
