import 'package:flutter/material.dart';

import 'package:flutter_components/src/providers/menu_provider.dart';
import 'package:flutter_components/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _getList(),
    );
  }

  Widget _getList() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('Builder');
        return ListView(
          children: _getListItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _getListItems(List<dynamic> data) {
    final List<Widget> options = [];
    data.forEach((opt) {
      final tempWidget = ListTile(
        title: Text(opt['text']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.greenAccent),
        onTap: () {},
      );

      options..add(tempWidget)..add(Divider());
    });
    return options;
  }
}