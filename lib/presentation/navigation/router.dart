import 'package:fc_kairat_app/presentation/features/home/screens/home_screen.dart';
import 'package:fc_kairat_app/presentation/features/profile/screens/profile_screen.dart';
import 'package:fc_kairat_app/presentation/features/selection/screens/selection_screen.dart';
import 'package:fc_kairat_app/presentation/features/shop/screens/shop_screen.dart';
import 'package:fc_kairat_app/presentation/features/ticket/screens/tickets_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'bottom_navigation_scaffold.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (
        BuildContext context,
        GoRouterState state,
        StatefulNavigationShell navigationShell,
      ) {
        return BottomNavScaffold(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              builder: (BuildContext context, GoRouterState state) =>
                  const HomeScreen(),
              routes: [],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/selection',
              builder: (BuildContext context, GoRouterState state) =>
                  const SelectionScreen(),
              routes: [],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/tickets',
              builder: (BuildContext context, GoRouterState state) =>
                  const TicketsScreen(),
              routes: [],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (BuildContext context, GoRouterState state) =>
                  const ProfileScreen(),
              routes: [],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/shop',
              builder: (BuildContext context, GoRouterState state) =>
                  const ShopScreen(),
              routes: [],
            ),
          ],
        ),
      ],
    ),
  ],
);
