import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  State<MyApp> createState() => _MyAppState();
  List<CategoryModel>categories=[];
  void  _getcategories() {
    categories = CategoryModel.getcategories();
  }
  @override
  void initState() {
    _getcategories();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    _getcategories();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.arrow_forward, size: 30.0),
          ),
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "BreakFast",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.add_box_outlined, color: Colors.black),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top:40.0,right: 20.0,left: 20.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 80,
                    spreadRadius: 0.0,
                  ),
                ]
              ),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors. white,
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(Icons.account_balance, color: Colors.grey),
              ),

              ),

            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "Category",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 150,
                color: Colors.green,
                child:ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context, index)
                  {
                  return Container();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


