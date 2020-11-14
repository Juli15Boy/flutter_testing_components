import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[_cardFirstType()],
      ),
    );
  }

  Widget _cardFirstType() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.red,
            ),
            title: Text('Nais Card'),
            subtitle: Text(
                'The other day I was changing the subtitle of the card but I did it wrong, I think it\'s a good place to put it'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Okey'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
