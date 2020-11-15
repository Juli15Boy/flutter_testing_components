import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://ohmy.disney.com/wp-content/uploads/2015/07/Jack-skellington-in-the-hinterlands-in-nightmare-before-christmas.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: CircleAvatar(
              child: Text('JS'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://static1.srcdn.com/wordpress/wp-content/uploads/2019/08/Hamlet-Shakespearean-Quotations-Jack-Skellington-A-Nightmare-Before-Christmas.jpg?q=50&fit=crop&w=960&h=500'),
          fadeInDuration: Duration(milliseconds: 300),
        ),
      ),
    );
  }
}
