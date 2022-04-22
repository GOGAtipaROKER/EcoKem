import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'DejaVu Sans Mono', letterSpacing: 0.2);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/shapka.png')),
          ),
        ),
      ),
    body:
    Padding(
    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
    child: ListView(
    children: [
    Text('Переработка и утилизация отходов', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,), ),
    TextButton(onPressed: () {}, child: Row(children: [Icon(Icons.battery_charging_full, size: 35, color: Colors.green,), Text('  Сдать батарейки', style: textStyle,)],)),
    SizedBox(height: 7,),
    TextButton(onPressed: () {}, child: Row(children: [Icon(Icons.thermostat, size: 35, color: Colors.green), Text('  Сдать градусники', style: textStyle,),],)),
      SizedBox(height: 7,),
    TextButton(onPressed: () {}, child: Row(children: [Icon(Icons.local_laundry_service, size: 35, color: Colors.green),Text('  Сдать бытовую технику', style: textStyle,)],)),
      SizedBox(height: 7,),
    TextButton(onPressed: () {}, child: Row(children: [Icon(Icons.lightbulb, size: 35, color: Colors.green),Text('  Сдать элекрические лампы', style: textStyle,)],)),
      SizedBox(height: 7,),
    TextButton(onPressed: () {}, child: Row(children: [Icon(Icons.recycling, size: 35, color: Colors.green),Text('  Сдать пластик', style: textStyle,)],)),
      SizedBox(height: 7,),
    TextButton(onPressed: () {}, child: Row(children: [Icon(Icons.insert_drive_file, size: 35, color: Colors.green),Text('  Сдать макулатуру', style: textStyle,)],)),
      SizedBox(height: 7,),
    TextButton(onPressed: () {}, child: Row(children: [Icon(Icons.album, size: 35, color: Colors.green),Text('  Сдать шины', style: textStyle,)],)),
      SizedBox(height: 7,),
    TextButton(onPressed: () {}, child: Row(children: [Icon(Icons.airplay, size: 35, color: Colors.green),Text('  Автоматы для сбора вторсырья', style: textStyle,)],)),
      SizedBox(height: 7,),
    TextButton(onPressed: () {}, child: Row(children: [Icon(Icons.settings_rounded, size: 35, color: Colors.green),Text('  Добрые крышечки', style: textStyle,)],)),
      SizedBox(height: 7,),
    TextButton(onPressed: () {}, child: Row(children: [Icon(Icons.pie_chart_outline_rounded, size: 35, color: Colors.green),Text('  Раздельно сдать мусор', style: textStyle,)],)),
    ],
    ),
    ),
    );
  }
}
