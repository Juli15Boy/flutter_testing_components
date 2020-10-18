import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> options = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temp Components'),
      ),
      body: ListView(
        children: _createItemsShort(),
        // children: _createItems(),
      ),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();

    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      list..add(tempWidget)..add(Divider());
    }
    return list;
  }

  List<Widget> _createItemsShort() {
    return options.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Anything'),
            leading: Icon(Icons.star),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
