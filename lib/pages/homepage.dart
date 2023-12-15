import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String foodRadio = "";

  bool Novegetables = false;
  bool PorkCaps = false;
  bool frieddumplings = false;
  bool ordinary = false;
  bool special = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เมนูแนะนำ"),
        backgroundColor: Color.fromARGB(255, 255, 167, 35),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            radioManuList("ก๋วยเตี๋ยวต้มยำหมูเด้ง", "50 บาท"),
            radioManuList("ก๋วยเตี๋ยวเนื้อตุ๋น", "60 บาท"),
            radioManuList("ก๋วยเตี๋ยวต้มยำทะเล", "70 บาท"),
            radioManuList("ก๋วยเตี๋ยวเรืออยุธยา", "40 บาท"),
            radioManuList("ก๋วยเตี๋ยวไก่มะระ", "50 บาท"),
            Divider(),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text("ไม่ใส่ผัก"),
                value: Novegetables,
                onChanged: (value) {
                  setState(() {
                    Novegetables = value!;
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                secondary: Text("+10 บาท"),
                title: Text("แคปหมู"),
                value: PorkCaps,
                onChanged: (value) {
                  setState(() {
                    PorkCaps = value!;
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                secondary: Text("+10 บาท"),
                title: Text("เกี๊ยวทอด"),
                value: frieddumplings,
                onChanged: (value) {
                  setState(() {
                    frieddumplings = value!;
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text("ธรรมดา"),
                secondary: Text("0 บาท"),
                value: ordinary,
                onChanged: (value) {
                  setState(() {
                    ordinary = value!;
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                secondary: Text("+10 บาท"),
                title: Text("พิเศษ"),
                value: special,
                onChanged: (value) {
                  setState(() {
                    special = value!;
                  });
                })
          ],
        ),
      ),
    );
  }

  RadioListTile<String> radioManuList(String title, String subtitle) {
    return RadioListTile(
        activeColor: Color.fromARGB(255, 71, 7, 7),
        title: Text("$title"),
        subtitle: Text("$subtitle"),
        value: title,
        groupValue: foodRadio,
        onChanged: (value) {
          setState(() {
            foodRadio = value!;
          });
          print(foodRadio);
        });
  }
}
