import 'package:flutter/material.dart';

class TopIconCardContainer extends StatelessWidget {
  const TopIconCardContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xffcde0d5)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.network(
                  'https://th.bing.com/th/id/OIP.HYO46ho3h-lBk6nCZ9vXiAHaHa?pid=ImgDet&rs=1',
                  width: 40,
                ),
                SizedBox(height: 20),
                Text(
                  '30 MINS POLICY',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Image.network(
                  'https://sanaliving.com.au/wp-content/uploads/2021/04/icon-5-application.jpg',
                  height: 40,
                ),
                SizedBox(height: 20),
                Text('TRACEABILITY', style: TextStyle(fontSize: 10)),
              ],
            ),
            Column(
              children: [
                Image.network(
                  'https://th.bing.com/th/id/OIP.uutRNPxMaAXvTJuv5h0EBgHaHa?w=199&h=200&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  width: 40,
                ),
                SizedBox(height: 20),
                Text('LOCAL SOURCING', style: TextStyle(fontSize: 10)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}