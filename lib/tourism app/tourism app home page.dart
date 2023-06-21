
import 'package:assignment/tourism%20app/torism%20app%20details%20page.dart';
import 'package:flutter/material.dart';

class tourismapp2 extends StatelessWidget {
  List images=[
    "https://images.hdqwalls.com/download/amazing-beautiful-places-1920x1080.jpg",
    "https://wallpapercave.com/wp/wp5614086.jpg",
    "https://wallpapercave.com/wp/wp2678124.jpg",
    "https://th.bing.com/th/id/OIP.KF76ebwgX3i_U3JwORUF-QHaNL?pid=ImgDet&w=612&h=1089&rs=1"
  ];
  List names=[
    "Furious Place",
    "Luxury Place",
    "Favorite Place",
    "Nature Look"
  ];
  var amount=[
    5000,
    4848,
    4465,
    5446
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            text: 'Go',
            style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 20,
                fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: 'Fast',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        actions:  [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              foregroundImage: NetworkImage("https://i.pinimg.com/736x/5f/40/6a/5f406ab25e8942cbe0da6485afd26b71.jpg" ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Search Here',
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Popular Places',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.lightBlue),
                  ),
                ],
              ),
            ),
            Flexible(
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: MediaQuery.of(context).size.height * .28,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemCount: 4,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(images[index]),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 70,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text(
                             "${amount[index]}",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            )),
                      ),
                      Text(
                        names[index],
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff294e6a)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide.none,
                      ),
                    ),
                  ),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => tourisumapp3(),
                    ),
                  ),
                  child: Text(
                    'Explore Now',
                    style: TextStyle(fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}