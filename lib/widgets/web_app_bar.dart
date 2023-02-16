import 'package:family_vibes/colors.dart';
import 'package:flutter/material.dart';
class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*.30,
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
          color: webAppBarColor,
          border: Border(
            right: BorderSide(
              color: dividerColor
            )
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg"),
              radius: 20,
            ),
            Row(children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.comment,color: Colors.grey,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color: Colors.grey,))
            ],)
          ],
        ),
    );
  }
}
