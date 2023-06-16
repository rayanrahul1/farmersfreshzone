import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'customer review container.dart';

class ReviewCarrousel extends StatelessWidget {
  List reviewCarrouselList = [
    {
      'Name': 'Rahul V R',
      'Designation': 'cto , RappidValue',
      'image': 'https://images.unsplash.com/photo-1592009309602-1dde752490ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
      'reviewText':
      'I was exremely pleased after seeing the initiative by Farmers Fresh Zone to connect the Farmer-Supplier-Customer ecosystem. One thing sets FFZ apart from the rest is definitely the fresh taste of their products. I also had a chance to visit their farm,it was a great experience to take a look at the beautiful farms!',
    },
    {
      'Name': 'Adhul K A',
      'Designation': 'VP Operations, TCS',
      'image': 'https://wifininjas.net/wp-content/uploads/2018/12/Matthew-Starling-2.jpeg',
      'reviewText':
      'Being a customer of Farmers Fresh Zone, I can definitely say that I am extremely pleased with their service. You can choose from a wide range of "safe-to-eat" products, all of which are 100% Fresh & Natural. I appreciate their efforts in providing healthy food to the customer & helping the livelihood of farmers at the same time.',
    },
    {
      'Name': 'Hrithin A K ',
      'Designation': 'Online digital marketing business',
      'image': 'https://th.bing.com/th/id/OIP.gVTxDTEzUnVJ4giYgR0RoQHaI_?pid=ImgDet&w=850&h=1032&rs=1',
      'reviewText':
      'As concerned parents. we wanted our kids to eat pesticide-free & healthy food and thats how we came across Farmers Fresh Zone. Their fresh products &  prompt delivery is the reason we have been a part of the Farmers Fresh Zone family for almost three years now. Farmers Fresh Zone is the best solution to countless concerned parents like us! ',
    },
    {
      'Name': 'Hrish B B',
      'Designation': 'CEO , Infopark',
      'image': 'https://th.bing.com/th/id/OIP.icCTLyWTGm34C_xoxEaGjQAAAA?pid=ImgDet&w=240&h=240&rs=1',
      'reviewText':
      'I was exremely pleased after seeing the initiative by Farmers Fresh Zone to connect the Farmer-Supplier-Customer ecosystem. One thing sets FFZ apart from the rest is definitely the fresh taste of their products. I also had a chance to visit their farm,it was a great experience to take a look at the beautiful farms!',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) => CustomerReviews(
        Name: reviewCarrouselList[index]['Name'],
        Designation: reviewCarrouselList[index]['Designation'],
        image: reviewCarrouselList[index]['image'],
        reviewText: reviewCarrouselList[index]['reviewText'],
      ),
      itemCount: reviewCarrouselList.length,
      options: CarouselOptions(
        pageSnapping: true,
        aspectRatio: 1.6,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
    );
  }
}