import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<int> image_list =[1,2,3];
  List <int> icon_list =[4,5,6];
  List <String> text_list = ["MIR24", "Россия24", "Sevimli TV"];
  late TabController tabController;
 @override
 void initState(){
   super.initState();
   tabController = TabController(length: 5, vsync: this);
   tabController.addListener(() {print(tabController.index);});
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Телеканалы"),
        bottom: TabBar(
          controller: tabController,
          isScrollable: true,
          indicator: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.white,
                width: 2,
              )
            )
          ), tabs: [
            Tab(text: "Все"),
            Tab(text: "Детские",),
            Tab(text: "Новости",),
            Tab(text: "Кино",),
            Tab(text: "Музыка",),
        ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ListView.builder(itemBuilder: (context, index){
            return Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/${image_list[index]}.png", width: 343, height: 176,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [ SizedBox(width: 70),
                        Image.asset("assets/${icon_list[index]}.png"),
                        SizedBox(width: 10),
                        Text("${text_list[index]}"),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }, itemCount: 3
                ),
          ListView.builder(itemBuilder: (context, index){
            return Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/1.png", width: 343, height: 176,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [ SizedBox(width: 70),
                        Image.asset("assets/4.png"),
                        SizedBox(width: 10),
                        Text("${text_list[0]}"),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }, itemCount: 1
          ),
          ListView.builder(itemBuilder: (context, index){
            return Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/2.png", width: 343, height: 176,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [ SizedBox(width: 70),
                        Image.asset("assets/5.png"),
                        SizedBox(width: 10),
                        Text("${text_list[1]}"),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }, itemCount: 1
          ),
          ListView.builder(itemBuilder: (context, index){
            return Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/3.png", width: 343, height: 176,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [ SizedBox(width: 70),
                        Image.asset("assets/6.png"),
                        SizedBox(width: 10),
                        Text("${text_list[2]}"),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }, itemCount: 1
          ),
          ListView.builder(itemBuilder: (context, index){
            return Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/1.png", width: 343, height: 176,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [ SizedBox(width: 70),
                        Image.asset("assets/4.png"),
                        SizedBox(width: 10),
                        Text("${text_list[0]}"),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }, itemCount: 1
          ),
        ],
      ),
    );
  }
}
