import 'package:flutter/material.dart';
import 'package:flutter_tree/bean/organ.dart';
import 'package:flutter_tree/page/tree.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Tree(_buildData()),
    );
  }



  List<Organ> _buildData(){
    return [Organ([
      Organ([
        Organ([
          Organ(
              [
                Organ(
                    null,
                    [
                      Member("五级机构成员1"),
                      Member("五级机构成员2"),
                      Member("五级机构成员3"),
                      Member("五级机构成员4"),
                    ],
                    "五级机构"
                )
              ], [
            Member("四级机构成员1"),
            Member("四级机构成员2"),
            Member("四级机构成员3"),
            Member("四级机构成员4"),
          ],"四级机构"),
          Organ(
              [
                Organ(
                    null,
                    [
                      Member("六级机构成员1"),
                      Member("六级机构成员2"),
                      Member("六级机构成员3"),
                      Member("六级机构成员4"),
                    ],
                    "六级机构"
                )
              ], [
            Member("七级机构成员1"),
            Member("七级机构成员2"),
            Member("七级机构成员3"),
            Member("七级机构成员4"),
          ],"七级机构")
        ], [
          Member("三级机构成员1"),
          Member("三级机构成员2"),
          Member("三级机构成员3"),
          Member("三级机构成员4"),
        ], "三级机构")
      ], [
        Member("二级机构成员1"),
        Member("二级机构成员2"),
        Member("二级机构成员3"),
      ], "二级机构")
    ], [
      Member("一级机构成员1"),
      Member("一级机构成员2"),
      Member("一级机构成员3"),
      Member("一级机构成员4"),
      Member("一级机构成员5"),
    ], "一级机构"),
    Organ(null, [
      Member("八级机构成员1"),
      Member("八级机构成员2"),
      Member("八级机构成员3"),
      Member("八级机构成员4"),
      Member("八级机构成员5"),
    ], "八级机构")];
  }
}


