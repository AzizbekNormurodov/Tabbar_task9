import 'dart:html';

import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> with TickerProviderStateMixin {
  late TabController tabController;
  List <int> list_icon = [7,8,9,10];
  List<String> list_text = ["Тендер", "Персональный заказ", "Выполняется", "История заказов"];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( centerTitle: true,
        title: Text(
          "Мои заявки",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Color(0xffF4F4F4),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: TabBar(
              labelColor: Colors.black,
              padding: EdgeInsets.all(4),
              controller: tabController,
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              tabs: [
                Tab(text: "Я заказчик"),
                Tab(text: "Я исполнитель"),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TabBarView(
          controller: tabController,
          children: [
            ListView.builder(itemBuilder: (context, index){
              return ListTile(
                title: Text("${list_text[index]}"),
                leading: Image.asset("assets/${list_icon[index]}.png"),
                trailing: Icon(Icons.chevron_right),
              );
            }, itemCount: 4,
            ),

          ],
        ),
      ),
    );
  }
}
