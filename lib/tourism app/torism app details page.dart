import 'package:assignment/tourism%20app/top%20row%20and%20widget.dart';
import 'package:flutter/material.dart';

class tourisumapp3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopRow(),
               SizedBox(height:10),
               ListTile(
                contentPadding: EdgeInsets.zero,
                title: Padding(
                  padding: EdgeInsets.only(bottom:5),
                  child: Text(
                    'About Places',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Text(
                    'Athirapally is the largest waterfalls of Kerala where water flow from a height of 80 feet. It is a spectacular sight to watch this mighty waterfall. It is the perfect destination for people who love nature. It is a popular destination as people from different parts of the world visit Athirapally throughout day'),
              ),
              const SizedBox(height: 25),
              const Text(
                'Special Facilities',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FacilityTile(
                      icon: Icons.local_parking_outlined,
                      text: "Free Parking",
                    ),
                    FacilityTile(
                      icon: Icons.support_agent,
                      text: "24 h support",
                    ),
                    FacilityTile(
                      icon: Icons.wifi,
                      text: "Free Wifi",
                    )
                  ]),
              const SizedBox(height: 25),
              Container(
                height: MediaQuery.of(context).size.height * .25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://q-xx.bstatic.com/xdata/images/hotel/840x460/119002127.jpg?k=f26c9b2007dbbd85c7125aa09a5e0813aabef9558b4e5cdcce0c5a92ac435f36&amp;o='),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(height: 25),
              const Text(
                'Our Packages',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PackagesContainer(),
                  PackagesContainer(),
                  PackagesContainer(),
                  PackagesContainer(),
                ],
              ),
              Spacer(),
              SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightBlue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide.none,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('\₹12000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          Text(
                            'Booking',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ]),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class PackagesContainer extends StatelessWidget {
  const PackagesContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: const [
            Text(
              'Adult',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            Divider(
              color: Colors.black38,
            ),
            Text(
              '02',
              style: TextStyle(fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}

class FacilityTile extends StatelessWidget {
  final IconData icon;
  final String text;

  const FacilityTile({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: Colors.lightBlue,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}