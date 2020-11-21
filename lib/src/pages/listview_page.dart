import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<int> _numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lists'),
      ),
      body: _createList(),
    );
  }

  Widget _createList() {
    return ListView.builder(
        itemCount: _numberList.length,
        itemBuilder: (BuildContext context, index) {
          final imageIndex = _numberList[index];

          return FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://picsum.photos/500/300/?image=$imageIndex'),
          );
        });
  }
}
