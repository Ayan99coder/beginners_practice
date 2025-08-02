import 'package:flutter/material.dart';
class Followingpage extends StatefulWidget {
  const Followingpage({super.key});

  @override
  State<Followingpage> createState() => _FollowingpageState();
}

class _FollowingpageState extends State<Followingpage> {
  final List<String> _profilepic = ["image/P1.jpg","image/P1.jpg","image/P1.jpg","image/P1.jpg","image/P1.jpg"];
  final List<String> _picname= ["ayan@","ayan@","ayan@","ayan@","ayan@",];
 int selectedindex= -1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Following"),elevation: 0.0,
        ),
        body: Column(
          children: [
            Container(
                    height: size.height*0.60,
                    width: size.width,
                    child: ListView.builder(
                        itemCount :_profilepic.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context,index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                             radius :33,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(_profilepic[index]),
                            ),
                            SizedBox(width: 10,),
                            Text.rich(TextSpan(
                              children: [
                                TextSpan(
                                  text:"Ayan,\n",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                TextSpan(
                                    text: _picname[index],
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                    ),
                                )
                              ]
                            )),
                            Spacer(),
                           GestureDetector(
                             onTap: (){
                               setState(() {
                                 if (selectedindex == index) {
                                   selectedindex = -1; // Deselect if already selected
                                 } else {
                                   selectedindex = index; // Select current
                                 }
                               });
                             },
                             child: Column(
                               children: [
                                 Container(
                                   height: 30,
                                   width: 80,
                                   decoration: BoxDecoration(
                                     gradient: LinearGradient(
                                       colors: selectedindex == index
                                           ? [ Colors.blueGrey, Colors.blue] // selected gradient
                                           : [ Colors.blueGrey, Colors.grey], // unselected gradient
                                       begin: Alignment.topCenter,
                                       end: Alignment.bottomCenter,
                                     ),
                                     borderRadius: BorderRadius.circular(12),
                                   ),
                                   child: Center(
                                     child: Text(
                                       selectedindex == index
                                           ? 'Following'
                                           : 'Follow',
                                       textAlign: TextAlign.center,
                                       style: TextStyle(
                                         color: selectedindex == index ? Colors
                                             .white : Colors.black,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           )
                          ],
                        ),
                      );
                    }
                    ),
                    ),
          ],
        ),
        ),
    );
  }
}
