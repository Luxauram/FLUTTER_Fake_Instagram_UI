import 'package:flutter/material.dart';

import '../model/items_model.dart';

class Story extends StatelessWidget {
  const Story({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount:
            userItems.length + 1, // Aggiungi 1 per includere il tuo profilo
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 0) {
            // Il primo elemento è il tuo profilo
            return const Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: [
                  const Stack(
                    children: [
                      CircleAvatar(
                        radius: 38,
                        backgroundImage: AssetImage("assets/images/g.jpg"),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: CircleAvatar(
                          radius: 11,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 8,
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Your Story",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            );
          } else {
            // Gli altri elementi sono le storie degli utenti
            final user = userItems[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Container(
                    height: 76,
                    width: 76,
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomCenter,
                        colors: [Colors.amber, Colors.pink],
                      ),
                    ),
                    child: Container(
                      height: 74,
                      width: 74,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          height: 72,
                          width: 72,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(user.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    user.username,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
