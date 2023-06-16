import 'package:flutter/material.dart';

class BlogsListBuilder extends StatelessWidget {
  List blogContent = [
    {
      'image':
      'https://th.bing.com/th/id/OIP.yFBbsGFEY7Nzwco-8nYmqAHaG5?pid=ImgDet&rs=1',
      'title': 'Control Blood Pressure, the right way!',
      'time': '1 months ago',
    },
    {
      'image':
      'https://i.pinimg.com/736x/62/c2/4d/62c24d9303428dbb6edd23312257a151.jpg',
      'title': 'Five reasons why Broccoli should be a part of your diet!',
      'time': '2 months ago',
    },
    {
      'image':
      'https://www.1mg.com/articles/wp-content/uploads/2018/09/tips-to-prevent-cold.jpg',
      'title':
      'Five tips that prevent you from going “Achhooooooo” 🤧 this Monsoon!',
      'time': '3 months ago',
    },
    {
      'image':
      'https://th.bing.com/th/id/OIP.bV_TpsThUEIEh6laox9bbAHaE6?pid=ImgDet&rs=1',
      'title': 'Best Vegetable Juices For Your Health',
      'time': '4 months ago',
    },
    {
      'image':
      'https://sa1s3optim.patientpop.com/assets/images/provider/photos/2105368.jpg',
      'title': 'Cholesterol & human the body',
      'time': '5 months ago',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: blogContent.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          late String title;
          late String text = blogContent[index]['title'];
          if (text.length < 30) {
            title = text;
          } else {
            title = text.replaceRange(35, text.length, '...');
          }

          return Container(
            width: 150,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffcde0d5)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(10)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(blogContent[index]['image']))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(title),
                ),
                SizedBox(
                  width: 160,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 8),
                    title: Text(blogContent[index]['time']),
                    trailing: const Icon(
                      Icons.arrow_forward,
                      color: Color(0xff01b748),
                    ),
                    dense: true,
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 10,
        ),
      ),
    );
  }
}