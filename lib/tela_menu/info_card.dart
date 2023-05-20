import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.nome,
    required this.id,
  });

  final String nome, id;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          CupertinoIcons.person,
          color: Color(0xFF035811),
        ),
      ),
      title: Text(
        nome,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        id,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
