import 'rive_model.dart';

class Menu {
  final String title;
  final RiveModel rive;

  Menu({required this.title, required this.rive});
}

List<Menu> sidebarMenus = [
  Menu(
    title: "Tela inicial",
    rive: RiveModel(
        src: "assets/RiveAssets/new_file.riv",
        artboard: "HOME",
        stateMachineName: "HOME_interactivity"),
  ),
  Menu(
    title: "Sua conta",
    rive: RiveModel(
        src: "assets/RiveAssets/new_file.riv",
        artboard: "USER",
        stateMachineName: "USER_Interactivity"),
  ),
  Menu(
    title: "Favoritos",
    rive: RiveModel(
        src: "assets/RiveAssets/new_file.riv",
        artboard: "LIKE/STAR",
        stateMachineName: "STAR_Interactivity"),
  ),
  Menu(
    title: "Configurações",
    rive: RiveModel(
        src: "assets/RiveAssets/new_file.riv",
        artboard: "SETTINGS",
        stateMachineName: "SETTINGS_Interactivity"),
  ),
  Menu(
    title: "Sair",
    rive: RiveModel(
        src: "assets/RiveAssets/new_file.riv",
        artboard: "CHAT", // APENAS ICONE
        stateMachineName: "CHAT_Interactivity"),
  ),
];
List<Menu> sidebarMenus2 = [
  Menu(
    title: "Historico",
    rive: RiveModel(
        src: "assets/RiveAssets/new_file.riv",
        artboard: "TIMER",
        stateMachineName: "TIMER_Interactivity"),
  ),
  Menu(
    title: "Notificações",
    rive: RiveModel(
        src: "assets/RiveAssets/new_file.riv",
        artboard: "BELL",
        stateMachineName: "BELL_Interactivity"),
  ),
];

List<Menu> bottomNavItems = [
  Menu(
    title: "Chat",
    rive: RiveModel(
        src: "assets/RiveAssets/new_file.riv",
        artboard: "CHAT",
        stateMachineName: "CHAT_Interactivity"),
  ),
  Menu(
    title: "Search",
    rive: RiveModel(
        src: "assets/RiveAssets/new_file.riv",
        artboard: "SEARCH",
        stateMachineName: "SEARCH_Interactivity"),
  ),
  Menu(
    title: "Timer",
    rive: RiveModel(
        src: "assets/RiveAssets/new_file.riv",
        artboard: "TIMER",
        stateMachineName: "TIMER_Interactivity"),
  ),
  Menu(
    title: "Notification",
    rive: RiveModel(
        src: "assets/RiveAssets/new_file.riv",
        artboard: "BELL",
        stateMachineName: "BELL_Interactivity"),
  ),
  Menu(
    title: "Profile",
    rive: RiveModel(
        src: "assets/RiveAssets/new_file.riv",
        artboard: "USER",
        stateMachineName: "USER_Interactivity"),
  ),
];
