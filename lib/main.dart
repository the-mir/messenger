import 'package:flutter/material.dart';
import 'package:messenger_ui/pages/Received_data.dart';
import 'package:messenger_ui/pages/bottomNbar.dart';
import 'package:messenger_ui/pages/call_page.dart';
import 'package:messenger_ui/pages/chats_page.dart';
import 'package:messenger_ui/pages/people_page.dart';
import 'package:messenger_ui/pages/stories.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BNBStateProvider()), 
      ],
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     final providerData = Provider.of<BNBStateProvider>(context);
     final pages=[
        chat_page(),
        call_page(),
        people_page(),
        stories_page()
    ];
    final title_name=[
      "Chats",
      "Calls",
      "People",
      "Stories"
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          color: Colors.black,
        ),
      ),
      home: Scaffold(
        drawer: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Mir Mosarof Hossan"),
              accountEmail: Text("showravofficial@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/img.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // ListTile(
            //   leading: ClipRRect(
            //     borderRadius: BorderRadius.circular(40),
            //     child: Image.asset('assets/images/cat2.jpeg'),
            //   ),
            //   title: Text(
            //     'Mir Md. Mosarof Hossan Showrav',
            //     maxLines: 1,
            //     overflow: TextOverflow.ellipsis,
            //   ),
            // )
          ],
        )),
        appBar: AppBar(
          title: Text(
            title_name[providerData.currentIndex],
            textScaleFactor: 2,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          actions: [
            FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.create),
              backgroundColor: Color.fromARGB(255, 73, 71, 71),
              mini: true,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              pages[providerData.currentIndex],
            ],
          ),
        ),
        bottomNavigationBar: BNB(),

      ),
    );
  }
}


