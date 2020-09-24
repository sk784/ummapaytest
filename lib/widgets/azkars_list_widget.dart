import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/data/azkar.dart';
import 'package:flutter_app/widgets/azkar_item.dart';
import 'package:flutter_app/widgets/divide_widget.dart';
import '../colors.dart';

class AzkarsListWidget extends StatefulWidget {

  @override
  _AzkarsListWidgetState createState() => _AzkarsListWidgetState();
}

class _AzkarsListWidgetState extends State<AzkarsListWidget> {

  final List<Azkar> azkars = List();

  @override
  void initState() {
    super.initState();
    setState(() {
      azkars.add(Azkar("Утренний азкар №1","اللَّهُمَّ أَنْتَ رَبِّي لَا إِلَهَ إِلَّا أَنْتَ خَلَقْتَنِي وَ أَنَا عَبْدُكَ وَ أَنَا عَلَى عَهْدِكَ وَ وَعْدِكَ مَا اسْتَطَعْتُ أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُّ أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ وَ أَبُوءُ بِذَنْبِي فَاغْفِرْ لِي فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ",
      "О Аллах, Ты - Господь мой, и нет достойного поклонения, кроме Тебя, Ты создал меня, а я -Твой раб, и я буду хранить верность Тебе, пока у меня хватит сил. Прибегаю к Тебе от зла того, что я сделал, признаю милость, оказанную Тобой мне, и признаю грех свой. Прости же меня, ибо, поистине, никто не прощает грехов, кроме Тебя! (Бухари)",
      "Аллахумма, Анта Рабби, ля иляха илля Анта, халякта-ни ва ана 'абду-кя, ва ана аля 'ахди-кя ва ва'ди-кя ма-стата'ту. А'узу би-кя мин шарри ма сана'ту, абу'у ля-кя би-ни'мати-кя 'аляййя, ва абу'у би-занби, фа-гфир ли, фа-инна-ху ля йагфи-ру-з-зунуба илля Анта!"));
      azkars.add(Azkar("Утренний азкар №2","لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ ، لَهُ الْمُلْكُ وَ لَهُ الْحَمْدُ وَ هُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ",
      "Нет достойного поклонения, кроме одного лишь Аллаха, у которого нет сотоварища, Ему принадлежит владычество, Ему хвала, Он всё может (Ахмад)",
          "Ля иляха илля-Ллаху вахда-ху ля шарикя ля-ху, ля-ху-ль-мульку ва ля-ху-ль-хамду ва хуа 'аля кулли шайин кадир."));
    });

  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: AppColors.PrimaryColor,
        width: MediaQuery.of(context).size.width,
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return DivideWidget();
          },
          itemCount: azkars.length,
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return AzkarItem(
              azkar: azkars[index],
            );
          },
        ),
      ),
    );
  }
}