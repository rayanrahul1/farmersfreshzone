import 'package:flutter/material.dart';

class ChipsContainer extends StatelessWidget {
  const ChipsContainer({
    Key? key,
    required this.chips,
  }) : super(key: key);

  final List chips;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff4f4f4),
      height: 50,
      child: ListView.builder(
        padding: EdgeInsets.only(right: 10),
        itemCount: chips.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10,left:10),
          child: ElevatedButton(onPressed: (){},
            child:Text(chips[index],style: TextStyle(color:Colors.green,fontSize:13),),
            style:ElevatedButton.styleFrom(backgroundColor:Colors.white70,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),)
        ),
      ),
    );
  }
}