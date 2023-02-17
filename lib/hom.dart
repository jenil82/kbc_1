import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hom extends StatefulWidget {
  const Hom({Key? key}) : super(key: key);

  @override
  State<Hom> createState() => _HomState();
}

class _HomState extends State<Hom> {
  List qaList = [
    "Modi is Our Prime Minister",
    "Corona Find in Maliyah",
    "Surat Is Smart City",
    "Lion is Our Nation Animal",
    "Peacock is Our Nation Bird"
  ];
  List answerList = [true, false, true, false, true];
  List useranswerList = [];
  int i = 0;
  int point = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "KBC",
            style: TextStyle(fontSize: 35),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Image.network(
              "https://t4.ftcdn.net/jpg/02/56/16/25/360_F_256162582_InY5MvcGtJFPqZIWj9tF6W43FHiQm8kv.jpg",
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Color(0xa3000000),
            ),
            Column(
              children: [
                Container(
                  height: 300,
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Text(
                    "${qaList[i]}",
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    SizedBox(width: 60,),
                    ElevatedButton(
                        onPressed: () {
                          useranswerList.add(true);

                          setState(() {
                            if (i < qaList.length - 1) {
                              i++;
                            }
                          });
                        },
                        child: Text("Yes")),
                 SizedBox(width: 250,),
                    ElevatedButton(
                        onPressed: () {
                          useranswerList.add(false);

                          setState(() {
                            if (i < qaList.length - 1) {
                              i++;
                            }
                          });
                        },
                        child: Text("No")),
                  ],
                ),
                Spacer(),
                SizedBox(
                  height: 20,
                ),
                Visibility(
                  visible: useranswerList.length > 4 ? true : false,
                  child: ElevatedButton(
                      onPressed: () {
                        print(useranswerList);
                        int p = result();
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text("$p/5")));
                      },
                      child: Text("Result")),
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  int result() {
    for (int j = 0; j < qaList.length; j++) {
      if (answerList[j] == useranswerList[j]) {
        point++;
      }
    }
    return point;
  }
}
