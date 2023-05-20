import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SideMenuTile extends StatelessWidget {
  const SideMenuTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Divider(
            color: Colors.white,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: SizedBox(
            height: 34,
            width: 34,
            child: RiveAnimation.asset(
              "assets/RiveAssets/icons.riv",
              artboard: "HOME",
              onInit: (artboard) {},
            ),
          ),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
