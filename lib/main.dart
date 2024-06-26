import 'package:artes_flutter/src/routes/app_router.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import "package:easy_localization/easy_localization.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      supportedLocales: const [Locale("ky"), Locale("ru")],
      path: 'assets/translations',
      fallbackLocale: const Locale("ky"),
      assetLoader: const YamlAssetLoader(),
      child: App()));
}

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 18, fontFamily: "Roboto"),
        ),
        fontFamily: "Roboto",
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: _appRouter.config(),
    );
  }
}
