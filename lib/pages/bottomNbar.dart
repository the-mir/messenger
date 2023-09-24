import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Received_data.dart';

class BNB extends StatefulWidget {
  const BNB({super.key});

  @override
  State<BNB> createState() => _BNBState();
}

class _BNBState extends State<BNB> {

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<BNBStateProvider>(context);
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Color.fromARGB(235, 13, 58, 206),
        unselectedItemColor: Color.fromARGB(255, 88, 86, 86),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sms_sharp,
            ),
            label: 'Chats',
          ),
                    BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
            ),
            label: 'Calls',
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
            ),
           label: 'People',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box,
            ),
            label: 'Stories',
          ),
          
        ],
        currentIndex: providerData.currentIndex,
      onTap: (index) {
        setState(() {
          providerData.updateIndex(index);
          });
        },
        
        );
  }
}