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
        children: <Widget>[
          _cardFirstType(),
          SizedBox(height: 30.0),
          _cardSecondType(),
          SizedBox(height: 30.0),
          _cardFirstType(),
          SizedBox(height: 30.0),
          _cardSecondType(),
          SizedBox(height: 30.0),
          _cardFirstType(),
          SizedBox(height: 30.0),
          _cardSecondType(),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardFirstType() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      elevation: 5.0,
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

  Widget _cardSecondType() {
    final card =  Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            fadeInDuration: Duration(milliseconds: 200),
            height: 250,
            fit: BoxFit.cover,
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fthebestpictureproject.files.wordpress.com%2F2014%2F12%2Fnightmarebeforechristmas4.jpg&f=1&nofb=1'),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("Nice Pumpking King"),
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          ),           
        ], 
      ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
        
      ),
    );
  }
}
