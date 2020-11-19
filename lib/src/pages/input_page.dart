import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs Here'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
        children: <Widget>[
          _createInput(),
          Divider(),
          _createInputMail(),
          Divider(),
          _createPasswordField(),
          Divider(),
          _displayValues(),
        ],
      ),
    );
  }

  _createInput() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        counter: Text('Characters ${_name.length}'),
        hintText: 'Name',
        //labelText: 'Label Name',
        helperText: 'Just name',
        suffixIcon: Icon(Icons.accessibility_new),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (value) => this.setState(() {
        _email = value;
      }),
    );
  }

  Widget _createInputMail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        hintText: 'Email',
        helperText: 'Just email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
      ),
      onChanged: (value) {
        this.setState(() {
          _email = value;
        });
      },
    );
  }

  Widget _createPasswordField() {
    return TextField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        hintText: 'Password',
        helperText: 'Just password',
        icon: Icon(Icons.lock),
      ),
    );
  }

  _displayValues() {
    return ListTile(
      title: Text('Name: $_name'),
      subtitle: Text('Email: $_email'),
    );
  }
}
