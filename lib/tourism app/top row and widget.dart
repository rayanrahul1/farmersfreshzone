import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TopRow extends StatefulWidget {

  @override
  State<TopRow> createState() => _TopRowState();
}

class _TopRowState extends State<TopRow> {
  double ratings = 5.0;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'Most Luxurious & Peaceful Natural Place',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: [
                  RatingBar.builder(
                    initialRating: 4.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 20,
                    itemPadding: const EdgeInsets.symmetric(horizontal: .5),
                    itemBuilder: (context, _) => const Icon(
                      Icons.heart_broken_outlined,
                      color: Colors.red,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                      setState(() {
                        ratings = rating;
                        print('$ratings');
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '$ratings Ratings',
                    style: TextStyle(color: Colors.grey.shade400),
                  )
                ],
              ),
            ),
          ),
          const VerticalDivider(
            color: Colors.grey,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/R.e8b42fa88d077f7fbe371c273ab368c1?rik=n2cfe9ULo%2fk%2brA&riu=http%3a%2f%2f3.bp.blogspot.com%2f-Jz0cfuHLhAw%2fUjxdmPbTAdI%2fAAAAAAAAAHc%2fezoyX9cnnDE%2fs1600%2fATHIRAPPALLI.jpg&ehk=YA62wrDwgWKcdpQGvuWt2wFct2tmh2yNm99zmSjPK64%3d&risl=&pid=ImgRaw&r=0'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}