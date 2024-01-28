import 'package:flutter/material.dart';
import 'package:maliyet_hesaplayici/ana_sayfa.dart';

class AnaMenu extends StatelessWidget {
  const AnaMenu({super.key});

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
                      minWidth: 150,
                      onPressed: () {},
                      color: Colors.deepPurple[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "HESAPLA",
                            softWrap: true,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.arrow_forward),
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
                color: Colors.black12,
                blurRadius: 13.0,
                spreadRadius: 0.1,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
