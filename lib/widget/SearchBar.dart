import 'package:flutter/material.dart';
import 'package:flutter_tree/bean/node.dart';
import 'package:flutter_tree/bean/organ.dart';

///支持搜索功能
class SearchBar extends StatefulWidget {
  final List<Node> list;
  final Function onResult;

  SearchBar(this.list, this.onResult);

  @override
  State<StatefulWidget> createState() {
    return SearchBarState();
  }
}

class SearchBarState extends State<SearchBar> {
  static bool _delOff = true; //是否展示删除按钮
  static String _key = ""; //搜索的关键字

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: 50,
        color: Colors.grey,
        padding: EdgeInsets.all(5),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              fillColor: Colors.white,
              filled: true,
              contentPadding: EdgeInsets.all(8),
              suffixIcon: GestureDetector(
                child: Offstage(
                  offstage: _delOff,
                  child: Icon(
                    Icons.highlight_off,
                    color: Colors.grey,
                  ),
                ),
                onTap: () {
                  setState(() {
                    _key = "";
                    search(_key);
                  });
                },
              )),
          controller: TextEditingController.fromValue(
            TextEditingValue(
              text: _key,
              selection: TextSelection.fromPosition(
                TextPosition(
                  offset: _key == null ? 0 : _key.length, //保证光标在最后
                ),
              ),
            ),
          ),
          onChanged: search,
        ),
      ),
    );
  }

  ///关键字查找
  void search(String value) {
    _key = value;
    List<Node> tmp = List();
    if (value.isEmpty) { //如果关键字为空，代表全匹配
      _delOff = true;
      widget.onResult(null);
    } else { //如果有关键字，那么就去查找关键字
      _delOff = false;
      for (Node n in widget.list) {
        if (n.type == Node.typeMember) {
          Member m = n.object as Member;
          if (m.name.toLowerCase().contains(value.toLowerCase())) { //匹配大小写
            tmp.add(n);
          }
        }
      }
      widget.onResult(tmp);
    }
  }
}
