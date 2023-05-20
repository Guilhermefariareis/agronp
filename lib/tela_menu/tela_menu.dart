import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_agronp/tela_menu/side_menu_tile.dart';
import 'package:rive/rive.dart';

import 'info_card.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: Color(0xFF035811),
        child: SafeArea(
          child: Column(
            children: [
              InfoCard(
                nome: "Teste nome",
                id: "1",
              ),
              // Topicos
              SideMenuTile(),
            ],
          ),
        ),
      ),
    );
  }
}
