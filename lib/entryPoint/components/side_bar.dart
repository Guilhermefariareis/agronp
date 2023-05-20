import 'dart:io';

import 'package:flutter/material.dart';
import 'package:front_agronp/entryPoint/components/menu_btn.dart';
import 'package:front_agronp/flutter_flow/flutter_flow_util.dart';
import 'package:front_agronp/utils/index.dart';

import '../../../utils/rive_utils.dart';
import '../../models/menu.dart';
import 'info_card.dart';
import 'side_menu.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  Menu selectedSideMenu = sidebarMenus.first;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 288,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFFFFFEFE),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: DefaultTextStyle(
          style: const TextStyle(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InfoCard(
                name: "Teste1",
                bio: "Teste2",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16),
                child: Text(
                  "Menu",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.black),
                ),
              ),
              ...sidebarMenus
                  .map((menu) => SideMenu(
                        menu: menu,
                        selectedMenu: selectedSideMenu,
                        press: () {
                          RiveUtils.chnageSMIBoolState(menu.rive.status!);
                          setState(() {
                            selectedSideMenu = menu;

                            menu.title.toString();
                            String texto = menu.title.toString();
                            print(texto);

                            if (texto == "Tela inicial") {
                              Future.delayed(Duration(milliseconds: 500), () {
                                context.pushNamed('main_anuncios_usuario');
                              });
                            }
                            if (texto == "Favoritos") {
                              Future.delayed(Duration(milliseconds: 500), () {
                                context.pushNamed('main_anuncios_favoritos');
                              });
                            }
                            if (texto == "Sua conta") {
                              Future.delayed(Duration(milliseconds: 500), () {
                                context.pushNamed('tela_edit_cadastro_user');
                              });
                            }
                            if (texto == "Sair") {
                              Future.delayed(Duration(milliseconds: 300), () {
                                context.pushNamed('tela_login');
                              });
                            }
                          });
                        },
                        riveOnInit: (artboard) {
                          menu.rive.status = RiveUtils.getRiveInput(artboard,
                              stateMachineName: menu.rive.stateMachineName);
                          // print(menu.rive.stateMachineName);
                        },
                      ))
                  .toList(),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 40, bottom: 16),
                child: Text(
                  "Registros",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.black),
                ),
              ),
              ...sidebarMenus2
                  .map((menu) => SideMenu(
                        menu: menu,
                        selectedMenu: selectedSideMenu,
                        press: () {
                          RiveUtils.chnageSMIBoolState(menu.rive.status!);
                          setState(() {
                            selectedSideMenu = menu;
                          });
                        },
                        riveOnInit: (artboard) {
                          menu.rive.status = RiveUtils.getRiveInput(artboard,
                              stateMachineName: menu.rive.stateMachineName);
                        },
                      ))
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
