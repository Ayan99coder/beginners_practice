import 'dart:core';
import 'package:flutter/material.dart';
class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final List<String> _menu = const ["BreakFast", "Lunch", "Dinner", "Snack", "Fruits"];
  final List <String>_postimage = const[
    "image/d1.jpg",
    "image/d2.jpg",
    "image/d3.jpg",
    "image/d4.jpg",
    "image/d5.jpg",
    "image/d6.jpg",
    "image/d7.jpg",
  ];
  final List<String> _last = ["imag/s1.jpg", "imag/s2.jpg", "imag/s3.jpg", "imag/s4.jpg", "imag/s5.jpg",];
  final List<String> _listtext = [
    "Oats",
    "Caramel",
    "Fruits",
    "Vegetable",
    "Bread",
  ];
  final List<IconData> _new = [
    Icons.home,
    Icons.favorite,
    Icons.bar_chart,
    Icons.notifications,
    Icons.person,
  ];
  int selectedIndex = 0;
  int recipefav = 0;
  int iconselect = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Row(
               children: [
                Text.rich(TextSpan(
                  children: [
                    TextSpan(
                      text: "Hello Ayan,\n",
                      style: TextStyle(
                        fontSize: 16,
                      )
                    ),
                    TextSpan(
                    text: "What do you want to eat Today?",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      )
                    )
                  ]
                )),
                 Spacer(),
                     CircleAvatar(
                     radius: 20,
                     backgroundColor: Colors.white,
                     backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
                   ),
       
       
               ],
             ),
           ),
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(30),
                 color: Colors.white54,
               ),
               child: TextField(
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   prefixIcon: const Icon(Icons.search, color: Colors.black,size: 30,),
                   hintText: "Search...",
                   hintStyle: const TextStyle(color: Colors.black),
                 ),
               ),
             ),
           ),
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20,),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   "Popular menus",
                   style: TextStyle(
                     fontSize: 20,
                     fontWeight:  FontWeight.w600,
                   ),
                 ),
                 Text(
                   "see all",
                   style: TextStyle(
                     fontSize: 14,
                     fontWeight:  FontWeight.w500,
                     color: Colors.green,
                   ),
                 )
               ],
             ),
           ),
       SizedBox(height: 20,),
       SizedBox(
       height: 30,
         child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _menu.length,
        itemBuilder: (context,index){
         return Padding(
           padding: const EdgeInsets.only(left : 20),
           child: GestureDetector(
        onTap: (){
          setState(() {
            selectedIndex=index;
          });
        },
        child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors:
        selectedIndex == index ?
           [Colors.green, Colors.green]
              : [Colors.white, Colors.white],

          )
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _menu[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 15,
                  fontWeight: selectedIndex == index
                      ? FontWeight.bold:
                        FontWeight.w500,
                  color: selectedIndex == index
                      ? Colors.white :
                       Colors.black,
                ),
              ),
            ],
          ),
        ),
           ),
         );
        }
         ),
       ),
           SizedBox(height: 20,),
           SizedBox(
             height: 250,
             child: ListView.builder(
               itemCount: _postimage.length,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (context , index)
             {
               return Container(
                 margin: EdgeInsets.only(left:20,right: 10),
                 padding: EdgeInsets.symmetric(horizontal: 60),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8),
                   image: DecorationImage(image: AssetImage(
                       _postimage[index],
                   ),
                     fit: BoxFit.cover,
                   ),
                 ),
                 child: GestureDetector(
                   onTap: (){
                     setState(() {
                       recipefav=index;
                     });
                   },
                   child: Column(
                     children: [
                       Container(
                         padding :EdgeInsets.all(5),
                         margin:EdgeInsets.all(5),
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                             gradient: LinearGradient(
                                 colors: [
                                   recipefav == index ?
                                   Colors.red
                                       : Colors.white,
                                   recipefav == index
                                       ?Colors.red
                                       :Colors.white,
                                 ]
                             )
                         ),
                         child: Icon(
                           Icons.favorite,
                           size: 20,
                           color: Colors.black,
                         ),
                       )
                     ],
                   ),
                 ),
               );
             }
             ),
           ),
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20,),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   "Categories",
                   style: TextStyle(
                     fontSize: 20,
                     fontWeight:  FontWeight.w600,
                   ),
                 ),
                 Text(
                   "see all",
                   style: TextStyle(
                     fontSize: 14,
                     fontWeight:  FontWeight.w500,
                     color: Colors.green,
                   ),
                 )
               ],
             ),
           ),
           SizedBox(height: 20,),
           SizedBox(
             height: 90,
             child: ListView.builder(itemCount: _last.length,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (context , index)
             {
               return Padding(
                 padding: const EdgeInsets.only(left: 20,right: 20),
                 child: Column(
                   children: [
                     CircleAvatar(
                       backgroundColor: Colors.white,
                       radius : 33,
                       child: Image.asset(
                         _last[index],
                        height: 40,
                         width: 40,
                         fit: BoxFit.cover,
                       ),
                     ),
                     SizedBox(height:5,),
                     Text(
                       _listtext[index],
                       style: TextStyle(
                         fontSize: 12,
                         fontWeight: FontWeight.bold,
                         color: Colors.black,
                       ),
                     )
                   ],
                 ),
               );
             }
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(40.0),
             child: Row(
               children: [
                 Container(
                     height:40,
                     width:40,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     image: DecorationImage(image: NetworkImage("https://t3.ftcdn.net/jpg/06/14/60/70/360_F_614607042_rUK68Ajrven1KsZyQ63Kb5S9neYG2RHM.jpg",),
                     fit: BoxFit.cover,
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       "Hona Chii Min",
                       style: TextStyle(
                         fontSize: 14,
                         fontWeight : FontWeight.bold,
                         color: Colors.black,
                       ),
                     ),
                     Text(
                       "Expert Chef",
                       style: TextStyle(
                         color: Colors.black.withOpacity(0.5),
                         fontSize: 12,
                       ),
                     )
                   ],
                 )
               ],
             ),
           ),
           SizedBox(height: 30,),
         ],
       ),
     ),
      bottomSheet: Container(
        height: 60, // Reduced height
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 3,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(_new.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  iconselect = index;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    _new[index],
                    size: 24, // Slightly smaller
                    color: iconselect == index ? Colors.green : Colors.grey,
                  ),
                  SizedBox(height: 3),
                  if (iconselect == index)
                    Container(
                      height: 2,
                      width: 16,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
