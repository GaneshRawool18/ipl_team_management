import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IplTeam extends StatefulWidget {
  dynamic newData = [];
  String team;
  IplTeam({super.key, required this.newData, required this.team});

  @override
  State<IplTeam> createState() => _IplTeamState();
}

class _IplTeamState extends State<IplTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("IPL Teams"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        child: Image.network(
                          "https://tse3.mm.bing.net/th?id=OIP.CoDVTrKPvyjtz5A3W3haIQHaE8&pid=Api&P=0&h=220",
                          height: 100,
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        child: Image.network(
                          "https://tse2.mm.bing.net/th?id=OIP.2n3pnNdL4BPw8giRoEwo1QHaEK&pid=Api&P=0&h=220",
                          height: 100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        child: Image.network(
                          "https://tse2.mm.bing.net/th?id=OIP.G7nZTDgPB9jhnKCKQhu3KAHaFj&pid=Api&P=0&h=220",
                          height: 100,
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        child: Image.network(
                          "https://tse3.mm.bing.net/th?id=OIP.k1Uzfb3yDX_ZNRShxWcKYgAAAA&pid=Api&P=0&h=220",
                          height: 100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        child: Image.network(
                          "https://tse1.mm.bing.net/th?id=OIP.N1PYOPl21oGklYb3YTez5AHaF4&pid=Api&P=0&h=220",
                          height: 100,
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        child: Image.network(
                          "https://tse3.mm.bing.net/th?id=OIP.aJmjscBMLM0b1wNsK_dMrAHaFj&pid=Api&P=0&h=220",
                          height: 100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        child: Image.network(
                          "https://tse2.mm.bing.net/th?id=OIP.GedOGFh_k8BxyBDW94BQiAHaIK&pid=Api&P=0&h=220",
                          height: 100,
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        child: Image.network(
                          "https://tse4.mm.bing.net/th?id=OIP.66Xnay9VUnB0mx3ka65NbgHaJ4&pid=Api&P=0&h=220",
                          height: 100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        child: Image.network(
                          "https://tse2.mm.bing.net/th?id=OIP.cETwikdcNfsKDxVR3BkOtAHaFj&pid=Api&P=0&h=220",
                          height: 100,
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        child: Image.network(
                          "https://tse3.mm.bing.net/th?id=OIP.pdyNL1Lct6GU5xxLdd0lkAHaEZ&pid=Api&P=0&h=220",
                          height: 100,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
