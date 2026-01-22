import 'package:flutter/material.dart';
import 'package:practice/page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  IntroScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        fontFamily: "Poppins",
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        useLegacyColorScheme: false,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.white,
        iconSize:30 ,
        


        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "",),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "",),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: const Text(
                        "Menu",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),onTap: (){
                        Navigator.pop(context,MaterialPageRoute(builder: (context)=>IntroScreen()));
                    },
                    ),
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.orangeAccent,
                      child: Icon(Icons.person, color: Colors.white),
                    )
                  ],
                ),

                const SizedBox(height: 20),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.white54),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white54),
                      border: InputBorder.none,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                SizedBox(
                  height: 85,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    itemExtent: 100,
                    children: [
                      buildCategory("All", "🍔"),
                      buildCategory("Burger", "🍔"),
                      buildCategory("Pizza", "🍕"),
                      buildCategory("Dessert", "🍰"),
                      buildCategory("Special", "🍕"),

                    ],
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  "Promotions",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),

                const SizedBox(height: 15),

                Container(
        
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF9C27B0),
                        Color(0xFFE91E63),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.purple,
                        blurRadius: 35,
                        spreadRadius: -5,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Today's Offer",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Free box of Fries",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "on all orders above \$150",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 13),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 120,
                        child: Image.asset(
                          "assets/images/Crunchy-French-Fries-PNG-File 1.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  "Popular",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),

                const SizedBox(height: 15),

                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    buildFoodCard(
                      name: "Beef Burger",
                      price: "\$20",
                      image:
                      "assets/images/image-removebg-preview 1.png",
                    ),
                    buildFoodCard(
                      name: "Cheese Pizza",
                      price: "\$32",
                      image:
                      "assets/images/Pepperoni-Pizza-PNG-Image 1.png",
                    ),
                    buildFoodCard(
                      name: "Tikka Pizza",
                      price: "\$32",
                      image:
                      "assets/images/Pepperoni-Pizza-PNG-Image 1.png",
                    ),
                    buildFoodCard(
                      name: "Big Burger",
                      price: "\$20",
                      image:
                      "assets/images/image-removebg-preview 1.png",
                    ),
                  ],
                ),

                const SizedBox(height: 35),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildCategory(String title, String emoji) {
  return Padding(
    padding: const EdgeInsets.only(right: 15),
    child: Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.grey.shade900,
          child: Text(
            emoji,
            style: const TextStyle(fontSize: 26),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        )
      ],
    ),
  );
}

/// Food Card Widget
Widget buildFoodCard({required String name, required String price, required String image}) {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.all(15),
      width: 160,
      height: 190,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(20),

      ),
      child: Column(
        children: [
          Image.asset(image, height: 100),
          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(name,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  Text(price, style: const TextStyle(color: Colors.greenAccent)),

                ],
              ),
              InkWell(
                child: CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                  radius: 16,
                  child: const Icon(Icons.add, size: 18, color: Colors.white),
                ),
                onTap: (){print (' $name Added to cart');},
              ),
            ]),
            ],
          ),


    ),
  );
}
