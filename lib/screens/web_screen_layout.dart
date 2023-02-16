import 'package:family_vibes/widgets/contact_list.dart';
import 'package:family_vibes/widgets/web_app_bar.dart';
import 'package:family_vibes/widgets/web_search_bar.dart';
import 'package:flutter/material.dart';
class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebAppBar(),
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*.70,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image:DecorationImage(
                image:  AssetImage("assets/images/backgroundImage.png"),
                fit: BoxFit.cover
              )
            ),
          )
        ],
      ),
    );
  }
}
