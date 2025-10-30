import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Riverpod Counter Screen',
    subTitle: 'Here there is a buttom to count',
    link: '/counter-screen',
    icon: Icons.radio_button_checked_rounded,
  ),
  MenuItems(
    title: 'Buttons',
    subTitle: 'A lot of button by flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Cards',
    subTitle: 'a beautiful container',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'ProgressIndicators',
    subTitle: 'General and controlled',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'Snackbar and dialogs',
    subTitle: 'Snackbar for all of us',
    link: '/snackbar',
    icon: Icons.info_outline,
  ),
  MenuItems(
    title: 'UI Controls + Tiles',
    subTitle: 'A serie of UI Controls by flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
  MenuItems(
    title: 'First tutorial of the App',
    subTitle: 'This is the tutorial for beginners in the app',
    link: '/tutorial',
    icon: Icons.pending_actions_outlined,
  ),
  MenuItems(
    title: 'Infinite scroll and Pull',
    subTitle: 'Infinite lists and pull to refresh',
    link: '/infinite',
    icon: Icons.perm_device_information_outlined,
  ),
  MenuItems(
    title: 'Change theme',
    subTitle: 'Change theme color of the app',
    link: '/theme-changer',
    icon: Icons.color_lens_outlined,
  ),
];
