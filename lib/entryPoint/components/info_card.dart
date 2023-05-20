import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.name,
    required this.bio,
  }) : super(key: key);

  final String name, bio;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0xFFECECEC),
        child: Icon(
          CupertinoIcons.person,
          color: Colors.black,
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(color: Colors.black),
      ),
      subtitle: Text(
        bio,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
