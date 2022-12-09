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
branchты githubга жүктөгөндөн кийин аны кошуш үчүн repozitorго барып compare & pull requestке киребиз,
анын ичин жазгандан кийин create pull requestти басабыз дагы  Files changedке кирип изменения болгон жерлерди салыштыра алабыз.
Салыштырууну көргөндөн кийин merged кылып койобуз. Ушинтип branchтарыбызды келтирип алабыз. 
3. Эми биз VS проектибизге келип, origin mainге келсек бизге кошула элек папкларды көрөбүз.
Аны терминалда git pull деп mainге келе элек папкаларды  mainге тартып алабыз.
4. Эми биз integration firestoreкылабыз. Ал үчүн жаңы бренч ачып аталышын integration firestore кылабыз.
Андан соң ошол бренчтеги проектиге модель түзөбүз.model/product_model.dart. Моделге бир класс,
жана жарнамага эмне муктажыктар болсо класска түзүп алалы.
МИСАЛЫ: 1. Жарнамага буюм сурөттөрү. Тайтлы, ачыктама дескрипшны, Жарнаманын киргизилген датасы,
телефон номери,сатуучунун аты жөнү, буюм кайсыл жерде экендиги тууралуу адреси, Буюмдун баасы.
Класстын тизмесиндеги тартиби сүрөт нулебл болгон листтен болсун, себеби кардар буюмдун сүрөтүн киргизбеши мүмкүн.
жана буюмдун баасын да нулебил кылсак болот, себеби баасын киргизбеши мүмкүн.
5. Файрбейздин документине келип ошол тартип менен жумушту улантабыз.
5.1. flutter pub add cloud_firestore пакетин көчүрүү.
6. HomePageте floatingActionButton даярда жана аны басканда add_product_pageке бара турган навигатор түз.
7. add_product_pageтин көрүнүшү: ListView анын айланасы 15,20,15,20 пикселден болсун. Андан кийин
ListViewнун childrenине TextFormField киргизип анын decorationун түз, декорациянын borderи болсун,
жана borderдин радиусу 20 пикселден болсун.
8. Биз түзгөн textFormFieldти extract widget кылып коебуз, аталышы CustomTextField.
9. class CustomTextFieldке жогорудан келген String? hintext, TextEditingController?, int? maxLines түз, аны
TextFormFieldге controllerди жана maxLinesти бер, ал эми TextFormFieldтин декорациясына hintextти бер.
10. modelдеги тизмеге карап CustomTextFieldтин эсебин көбөйт. 
11. Ар бир CustomTextFieldтин hintextине Моделдин суроттон башка бардык тизмесин орду менен жайгаштыр.
Пока Суротту кийин кылабыз.
12. Ар бир CustomTextFieldге controller берүү. Ал үчүн жогоруга TextFormController даярдоо жана ар бирине берүү.
13. Астына ElevatedButton.icon түзүп коюуу керек
14. DateTimeды басканда число месяц тандоочу ShowCupertinoModalPopUp чыгыш керек, Ал ShowCupertinoModalPopUp кодун
hintext dateTimeга onTap түзүп анын ичине жайгаштырабыз.
15.





 */

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
