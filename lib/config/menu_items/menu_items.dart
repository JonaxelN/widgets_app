import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/botones_screen.dart';
import 'package:widgets_app/presentation/screens/cards_screen.dart';
import 'package:widgets_app/presentation/screens/counter/counter_screen.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String url;
  final IconData icon;
  final String routeName;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.url,
    required this.icon,
    required this.routeName,
  });
}

const appMenuItmes = <MenuItem>[
  MenuItem(
      title: 'Riverpod Router Conteo',
      subTitle: 'Principios de Riverpod con un contador',
      url: '/counterScreen',
      icon: Icons.bluetooth_connected,
      routeName: CounterScreen.routeName),
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en flutter',
      url: '/buttons',
      icon: Icons.smart_button_outlined,
      routeName: ButtonsScreen.routeName),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      url: '/cards',
      icon: Icons.credit_card,
      routeName: CardsScreen.routeName),
  MenuItem(
      title: 'ProgressIndicators',
      subTitle: 'Generales y controlados',
      url: '/progress',
      icon: Icons.refresh_rounded,
      routeName: ProgressScreen.routeName),
  MenuItem(
      title: 'Snacknars',
      subTitle: 'Indicadores en pantalla',
      url: '/snackbars',
      icon: Icons.snapchat,
      routeName: SnackbarScreen.routeName),
  MenuItem(
      title: 'Animated Container',
      subTitle: 'Contenedor animado a través de un botón',
      url: '/animatedContainer',
      icon: Icons.animation_outlined,
      routeName: AnimatedScreen.routeName),
  MenuItem(
      title: 'UI Controls',
      subTitle: 'Serie de controles flutter',
      url: '/uiControls',
      icon: Icons.car_crash_rounded,
      routeName: UiControlsScreen.routeName),
  MenuItem(
      title: 'Introducción a la aplicación',
      subTitle: 'Tutorial introductorio',
      url: '/tutorial',
      icon: Icons.tungsten_rounded,
      routeName: AppTutorialScreen.routeName),
  MenuItem(
      title: 'Infinite Scroll y Pull',
      subTitle: 'Listas infinitas en flutter!!',
      url: '/infiniteScroll',
      icon: Icons.insert_drive_file,
      routeName: InfiniteScrollScreen.routeName),
  MenuItem(
      title: 'Cambiar Tema',
      subTitle: 'Cambia el tema de la app',
      url: '/themeChanger',
      icon: Icons.paid_outlined,
      routeName: ThemeChangerScreen.routeName),
];
