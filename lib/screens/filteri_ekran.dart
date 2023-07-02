import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/tabovi_ekran.dart';
import '../widgets/ladica.dart';
import '../providers/filteri_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilteriEkran extends ConsumerWidget {
  const FilteriEkran({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final aktivniFilteri = ref.watch(filteriProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Vaši filteri'),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(216, 180, 226, 100),
                  blurRadius: 6.0,
                  spreadRadius: 6.0,
                  offset: Offset(1, 1),
                ),
              ],
            ),
            //color: Color.fromRGBO(216, 180, 226, 150),
            padding: EdgeInsets.all(16),
            child: SwitchListTile(
              activeColor: Colors.purple,
              value: aktivniFilteri[Filter.jeHollyWood]!,
              onChanged: (isChecked) {
                ref
                    .read(filteriProvider.notifier)
                    .postaviFilter(Filter.jeHollyWood, isChecked);
              },
              title: Text(
                'HollyWood',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              subtitle: Text('-prikaži samo HollyWoodske filmove',
                  style: TextStyle(color: Colors.black, fontSize: 14)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(216, 180, 226, 100),
                  blurRadius: 6.0,
                  spreadRadius: 6.0,
                  offset: Offset(1, 1),
                ),
              ],
            ),
            //color: Color.fromRGBO(216, 180, 226, 150),
            padding: EdgeInsets.all(16),
            child: SwitchListTile(
              activeColor: Colors.purple,
              value: aktivniFilteri[Filter.jeEuropski]!,
              onChanged: (isChecked) {
                ref
                    .read(filteriProvider.notifier)
                    .postaviFilter(Filter.jeEuropski, isChecked);
              },
              title: Text(
                'Europski',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              subtitle: Text('-prikaži samo Europske filmove',
                  style: TextStyle(color: Colors.black, fontSize: 14)),
            ),
          ),
        ],
      ),
    );
  }
}
