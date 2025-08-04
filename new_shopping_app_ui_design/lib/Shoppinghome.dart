import 'package:flutter/material.dart';

class HomeShop extends StatefulWidget {
  const HomeShop({super.key});

  @override
  State<HomeShop> createState() => _HomeShopState();
}

class _HomeShopState extends State<HomeShop> {
  final List<String> _menu = [
    "Winter Stock",
    "Shoes Stock",
    "Summer Stock",
    "Watches Stock",
    "Kids Stock",
  ];
  final List<String> _names = [
    "Mens garments ",
    "Gents shoes ",
    "women garments",
    "Watches",
    "Kids garments",
  ];
  final List<String> _namesa = [
    "Tee shirts",
    "Independence Day\nShirts ",
    "Kids shoes",
    "Watches",
    "Jeans",
  ];

  final List<String> _pics = [
    "images/sh.jpg",
    "images/shoe.jpg",
    "images/mans.jpg",
    "images/watch.jpg",
    "images/women.jpg",
  ];
  final List<String> _picsa = [
    "images/P1.png",
    "images/P2.png",
    "images/P3.png",
    "images/P4.png",
    "images/P5.png",
  ];
  int selectedIndex = 0;
  final List<double> _prices = [19.99, 49.99, 15.50, 120.00, 25.00];
  final List<double> _pricesa = [6.99, 8.99, 4.50, 21.00, 8.00];
  final List<double> _ratings = [4.5, 4.0, 4.8, 5.0, 4.2];
  final List<double> _ratingsa = [4.0, 3.2, 4.5, 5.0, 4.2];
  final List<int> _discount = [25, 10, 50, 15, 5];
  List<bool> _isLovedList = [];
  List<bool> _isLovedLista = [];

  @override
  void initState() {
    super.initState();
    _isLovedList = List.generate(_pics.length, (index) => false);
    _isLovedLista = List.generate(_picsa.length, (index) => false);
  }

  void _Productdetails(int index, bool isTrending) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Productpage(
          image: isTrending ? _pics[index] : _picsa[index],
          nameList: isTrending ? _names[index] : _namesa[index],
          price: isTrending ? _prices[index] : _pricesa[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 40,
                      top: 20,
                    ),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            hintText: " What are you Looking for?",
                            hintStyle: TextStyle(color: Colors.black54),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 10, top: 8),
                              child: Icon(Icons.search),
                            ),
                            suffixIconColor: Colors.deepOrange,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    "Explore",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, right: 20),
                  child: InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.deepOrange,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            SizedBox(
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _menu.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: selectedIndex == index
                                ? [
                                    Colors.deepOrangeAccent,
                                    Colors.deepOrangeAccent,
                                  ]
                                : [
                                    Colors.orange.shade100,
                                    Colors.orange.shade100,
                                  ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              _menu[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: selectedIndex == index ? 18 : 14,
                                fontWeight: selectedIndex == index
                                    ? FontWeight.bold
                                    : FontWeight.bold,
                                color: selectedIndex == index
                                    ? Colors.orange.shade100
                                    : Colors.deepOrangeAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              height: 270,
              child: ListView.builder(
                itemCount: _pics.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GestureDetector(
                      onTap: () {
                        _Productdetails(index, true);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 70,
                                  vertical: 110,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage(_pics[index]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 8,
                                right: 8,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.red.withOpacity(0.9),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    "${_discount[index]}% OFF",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 8,
                                bottom: 8,
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    color: Colors.deepOrangeAccent,
                                    shape: BoxShape.circle,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _isLovedList[index] =
                                            !_isLovedList[index];
                                      });
                                    },
                                    child: Icon(
                                      Icons.favorite,
                                      color: _isLovedList[index]
                                          ? Colors.red
                                          : Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            _names[index],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$${_prices[index].toStringAsFixed(2)}",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 70),
                              Icon(Icons.star, size: 12, color: Colors.amber),
                              Text(
                                _ratings[index].toString(),
                                style: TextStyle(color: Colors.amber),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Trending Products",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 290,
              child: ListView.builder(
                itemCount: _pics.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GestureDetector(
                      onTap: () {
                        _Productdetails(index, false);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 70,
                                  vertical: 110,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage(_picsa[index]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 8,
                                bottom: 8,
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    color: Colors.deepOrangeAccent,
                                    shape: BoxShape.circle,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _isLovedLista[index] =
                                            !_isLovedLista[index];
                                      });
                                    },
                                    child: Icon(
                                      Icons.favorite,
                                      color: _isLovedLista[index]
                                          ? Colors.red
                                          : Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            _namesa[index],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$${_pricesa[index].toStringAsFixed(2)}",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 70),
                              Icon(Icons.star, size: 12, color: Colors.amber),
                              Text(
                                _ratingsa[index].toString(),
                                style: TextStyle(color: Colors.amber),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Productpage extends StatelessWidget {
  final String image;
  final String nameList;
  final double price;

  const Productpage({
    super.key,
    required this.image,
    required this.nameList,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: size.height * 0.55,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -35,
                  left: 90,
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepOrange.withOpacity(0.8),
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      size: 40,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    nameList,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "\$${price.toStringAsFixed(2)}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25,),
                      child: Text(
                        "Size 10",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.3)),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Crafted from premium quality materials for lasting\ndurability.\n"
                            "Lightweight and comfortable for everyday use.\n"
                            "Available in multiple sizes and colors to match\nyour style.\n"
                            "Designed with a sleek, modern look that stands out.\n"
                            "Eco‑friendly and made with sustainable resources.\n"
                            "Water‑resistant and easy to clean.\n"
                            "Perfect for casual, work, or special occasions.\n"
                            "Comes with a 1‑year warranty for peace of mind.",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
