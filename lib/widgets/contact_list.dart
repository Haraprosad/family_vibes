import 'package:family_vibes/colors.dart';
import 'package:family_vibes/info.dart';
import 'package:flutter/material.dart';
class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: info.length,
          itemBuilder: (ctx,index){
        return InkWell(
          onTap: (){
            //todo:
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: ListTile(
                  title: Text(info[index]['name'].toString(),style: const TextStyle(fontSize: 18),),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(info[index]['message'].toString(),
                    style: const TextStyle(fontSize: 15),),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      info[index]['profilePic'].toString()
                    ),
                  ),
                  trailing: Text(info[index]['time'].toString(),
                  style: const TextStyle(fontSize: 13,color: Colors.grey),),
                ),
              ),
               Container(width: double.infinity,
              color: dividerColor,height: 1,),
            ],
          ),
        );
      }),
    );
  }
}
