import 'package:assignment/farmers%20fresh/chips%20container.dart';
import 'package:assignment/farmers%20fresh/review%20corrousel.dart';
import 'package:assignment/farmers%20fresh/sliver%20app%20bar.dart';
import 'package:assignment/farmers%20fresh/store%20item%20grid.dart';
import 'package:assignment/farmers%20fresh/top%20icon%20card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'blogs list builder.dart';
import 'carousel image slider.dart';
import 'category grid.dart';
import 'certified badge container.dart';
void main(){
  runApp(MaterialApp(home: famersfreshzone(),debugShowCheckedModeBanner: false,));
}
class famersfreshzone extends StatelessWidget {
  static String id = 'Shopping_Cart';
  List chips = [
    'OFFERS',
    'VEGETABLES',
    'FRUITS',
    'EXOTIC',
    'FRESH CUTS',
    'NUTRITION CHARGERS',
    'PACKED Flavors '.toUpperCase(),
    'GOURMETS SALADS',
    'meats'.toUpperCase(),
  ];
  List topCarouselItemsList = [
    "https://p4.wallpaperbetter.com/wallpaper/690/604/944/berries-apples-oranges-grapes-wallpaper-preview.jpg",
    "https://p4.wallpaperbetter.com/wallpaper/803/969/173/fruit-baskets-grapes-apples-wallpaper-preview.jpg",
    "https://p4.wallpaperbetter.com/wallpaper/498/835/617/food-apples-pineapples-orange-fruit-wallpaper-preview.jpg",
    "https://p4.wallpaperbetter.com/wallpaper/418/676/17/rainbow-fruits-strawberry-orange-banana-lemon-blackberry-plum-wallpaper-preview.jpg",
    "https://p4.wallpaperbetter.com/wallpaper/234/657/240/fruit-citrus-lemon-orange-wallpaper-preview.jpg",


  ];
  List categoryImageList = [
    'https://image.freepik.com/free-vector/today-special-offer-banner_1588-804.jpg',
    'https://th.bing.com/th/id/OIP.Py4eRbJ0WIFjs51eUrIErAHaEo?w=294&h=183&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://wallpapercave.com/dwp1x/wp6557308.jpg',
    'https://th.bing.com/th/id/OIP.90dZ-b29p-SnlSChvOxnIAHaE6?pid=ImgDet&rs=1',
    'https://thumbs.dreamstime.com/b/fresh-cut-vegetables-greens-25203334.jpg',
    'https://www.vegan.io/blog/assets/10-healthiest-vegetables-to-include-in-your-vegan-diet-2018-04-16/healthiest-vegetables-df1cf550711076d052eaade12c38289a2637c38e546182d3c0136a90cb0bb0b3.jpg',
    'https://teinnovations.com/wp-content/uploads/2020/08/AdobeStock_157513245-scaled.jpeg',
    'https://th.bing.com/th/id/R.f9f60fcd833d305be97cbd20edee8e6a?rik=NdO7B7GLC138SA&riu=http%3a%2f%2fyesofcorsa.com%2fwp-content%2fuploads%2f2017%2f11%2f4K-Vegetable-Salads-Wallpaper-Full-HD.jpg&ehk=BsSKkSM%2bXhki7tO4yxLmGlb7IdxjWVbd28eY9B2Rm00%3d&risl=&pid=ImgRaw&r=0',
    "https://wallpapercave.com/wp/wp1903754.jpg"
  ];
  List bottomCarouselItemsList = [
  "https://images2.alphacoders.com/108/thumb-1920-1084626.jpg",
    "https://images5.alphacoders.com/113/thumb-1920-1130796.jpg"
];
  List StoreItems = [
    {
      'Image': 'https://th.bing.com/th/id/OIP.h8ISIodUaQRtSBU06KkvPwHaGr?pid=ImgDet&rs=1',
      'Name': 'Carrot',
      'Rate': '34',
      'Qty': '0.05kg',
    },
    {
      'Image': 'https://www.infoescola.com/wp-content/uploads/2010/04/banana_600797891.jpg',
      'Name': 'Banana',
      'Rate': '34.5',
      'Qty': '0.05kg',
    },
    {
      'Image': 'https://thejialatcook.files.wordpress.com/2018/03/9351278000232_0008_1481556046701.jpg',
      'Name': ' Broccoli Florets 200gm',
      'Rate': '99',
      'Qty': '1.00 NOS',
    },
    {
      'Image': 'https://th.bing.com/th/id/R.1746905e79820c611a75f362be285401?rik=Om5Rt8artWAu4A&riu=http%3a%2f%2fwww.valleyspuds.com%2fwp-content%2fuploads%2fRusset-Potatoes-cut.jpg&ehk=%2f9WbC1j%2fDMKQkwnb8Q9l7NfVGeVMrHuQmCWM%2fR9kpg8%3d&risl=&pid=ImgRaw&r=0',
      'Name': 'potato',
      'Rate': '23',
      'Qty': '0.05kg',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppbarContent(),
          SliverList(delegate: SliverChildListDelegate(
            [
              ChipsContainer(chips: chips),
              CarouselImageSlider(carouselItemsList: topCarouselItemsList),
              TopIconCardContainer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Shop By Category',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              StoreCategoryCardGrid(
                  CarouselItemsList: categoryImageList, chips: chips),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                    border: Border.symmetric(
                        horizontal:
                        BorderSide(width: 3, color: Color(0xffcde0d5)))),
                child: CarouselImageSlider(
                    carouselItemsList: bottomCarouselItemsList),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text(
                  'Best selling products',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              StoreItemGrid(StoreItems: StoreItems),
              TextButton(
                onPressed: () {},
                child:  Text(
                  'VIEW MORE',
                  style: TextStyle(color: Color(0xff01b748)),
                ),
              ),
              CertifiedBadgeContainer(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Our Blog Posts',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700),
                ),
              ),
              BlogsListBuilder(),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'VIEW MORE',
                  style: TextStyle(color: Color(0xff01b748)),
                ),
              ),
              const Divider(
                thickness: 8,
                color: Color(0xffcde0d5),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'What Our Customers Say',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700),
                ),
              ),
              ReviewCarrousel(),
              const Padding(
                padding:
                EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 15),
                child: Text(
                  'This Kochi-Based-farm-to-fork online marketplace is connecting farmers directly to customers',
                  textAlign: TextAlign.center,
                  style: TextStyle(height: 1.5, fontSize: 13),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/9/9a/The_Economic_Times_logo.png',
                    width: 100,
                  ),
                  Image.network(
                    'https://files.startupranking.com/startup/thumb/8034_2064627540c3c27254a71b819c5011a6bb226729_yourstory_m.png',
                    width: 50,
                  ),
                  Image.network(
                    'https://marketing.readwhere.com/newindian-logo.png',
                    width: 60,
                  ),
                  Image.network(
                    'https://st1.bgr.in/wp-content/uploads/2019/11/Asianet-logo.jpg',
                    width:60,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                thickness: 8,
                color: Color(0xffcde0d5),
              ),
              const ListTile(
                title: Text(
                  'Get To Know Us',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                ),
                subtitle: Wrap(
                  children: [
                    Text('About Us   |', style: TextStyle(fontSize: 10)),
                    SizedBox(width: 10),
                    Text('About Us   |', style: TextStyle(fontSize: 10)),
                    SizedBox(width: 10),
                    Text('About Us  ', style: TextStyle(fontSize: 10)),
                  ],
                ),
              ),
              const ListTile(
                title: Text(
                  'Useful Links',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                ),
                subtitle: Wrap(
                  children: [
                    Text('Privacy Policy   |',
                        style: TextStyle(fontSize: 10)),
                    SizedBox(width: 10),
                    Text('Return & Refund Policy   |',
                        style: TextStyle(fontSize: 10)),
                    SizedBox(width: 10),
                    Text('Terms & Condition  ',
                        style: TextStyle(fontSize: 10)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 30),
                    FaIcon(
                      FontAwesomeIcons.youtube,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 30),
                    FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 30),
                    FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: const Color(0xff01b748),
                child: const Text(
                    'Copyright © 2023 Farmers Fresh Zone . All Rights Reserved. V 2.40.22',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10, color: Colors.white)),
              ),
            ]
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff01b748),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.energy_savings_leaf,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_checkout_outlined,
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Account'),
          ]),

    );
  }
}
