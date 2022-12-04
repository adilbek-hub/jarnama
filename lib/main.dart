import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jarnama/app/app.dart';
import 'package:jarnama/firebase_options.dart';

/*
Гитхабта иштөө:
1. Проектини жаңы репазиторийге жүктөө
2. Проектиге кошумчаларды кошуу
3. Проектиде бранч создавайтетүү
4. Проектти жүргүзүү, эгер проект иштеген болсо проектини кайра => git add . git commit, git push
5.
 */
/*
ЖАРНАМА ПРИЛОЖЕНИЯГА КИРИШҮҮ
1. branch создавайтетүү name: create architecture жана проектиге папкаларды файлдарды түзүү.
add_product/page/add_product_page.dart/add_product.dart,home/home.dart,home/page/home_page.dart,app/app.dart
2. app.dart/MaterialAppти жүктөө, home_page.dart/ StatelesWidget орнотуу,home.dart/ home_page.dartты экспорт кылуу
add_product.dart/page/add_product_page.dartты экспорт кылуу.
Архитектурабызды түзүп буткөндөн кийин проектибиздин иштешин текшеребиз. Эгер иштеген болсо branchты githubка жүктөйбүз.

 */

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
