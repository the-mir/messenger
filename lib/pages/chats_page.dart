import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class chat_page extends StatelessWidget {
  const chat_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
                Padding(
                padding: const EdgeInsets.only(top: 5),
                child: TextField(
                    style: TextStyle(
                        backgroundColor: Color.fromARGB(255, 64, 63, 63)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 64, 63, 63),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(width: 0.8),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white70),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white70,
                      ),
                    )),
              ),
              SizedBox(
                height: 100,
                width: 400,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/img.jpg'),
                              ),
                            ),
                          ),
                          Container(
                            width: 55,
                            height: 30,
                            child: Text(
                              'Mir Mosarof Hossan',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 450,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amberAccent,
                            image: DecorationImage(
                                image: AssetImage('assets/images/img.jpg')),
                          ),
                        ),
                        title: Text(
                          'Mir Mosarof Hossan',
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          'Hello _Programmer',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        trailing: Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            //color: Colors.black45,
                            image: DecorationImage(
                                image: AssetImage('assets/images/img.jpg')),
                          ),
                        ),
                      );
                    }),
              ),
           
      ],
    );
  }
}
