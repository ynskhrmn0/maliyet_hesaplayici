import 'package:flutter/material.dart';
import 'package:maliyet_hesaplayici/providers/page_provider.dart';
import 'package:provider/provider.dart';

class AnaMenu extends StatefulWidget {
  const AnaMenu({super.key});

  @override
  State<AnaMenu> createState() => _AnaMenuState();
}

class _AnaMenuState extends State<AnaMenu> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          clipBehavior: Clip.hardEdge,
          child: Row(
            children: [
              Container(
                width: 150,
                height: 225,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/silindir_kutu(1).jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Text(
                        "SİLİNDİR",
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        context.read<PageProvider>().changePage(newPage: 2);
                      },
                      color: Colors.blueGrey[800],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text(
                              "HESAPLA",
                              softWrap: true,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 0.3,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[350],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          clipBehavior: Clip.hardEdge,
          child: Row(
            children: [
              Container(
                width: 150,
                height: 225,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/dörtgen-kutu.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Text(
                        "DÖRTGEN PRİZMA",
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        context.read<PageProvider>().changePage(newPage: 3);
                      },
                      color: Colors.blueGrey[800],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text(
                              "HESAPLA",
                              softWrap: true,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 0.3,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[350],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          clipBehavior: Clip.hardEdge,
          child: Row(
            children: [
              Container(
                width: 150,
                height: 225,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/altigen-kutu.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Text(
                        "ALTIGEN PRİZMA",
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        context.read<PageProvider>().changePage(newPage: 4);
                      },
                      color: Colors.blueGrey[800],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text(
                              "HESAPLA",
                              softWrap: true,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 0.3,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[350],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          clipBehavior: Clip.hardEdge,
          child: Row(
            children: [
              Container(
                width: 150,
                height: 225,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/sekizgen-kutu.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Text(
                        "SEKİZGEN PRİZMA",
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        context.read<PageProvider>().changePage(newPage: 5);
                      },
                      color: Colors.blueGrey[800],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text(
                              "HESAPLA",
                              softWrap: true,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 0.3,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[350],
          ),
        )
      ],
    );
  }
}
