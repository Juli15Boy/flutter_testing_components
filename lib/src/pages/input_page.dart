import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  String _email = '';
  String _date = '';

  List<String> _movieObjects = ['Pumpkin', 'Gift', 'Rubber Duck', 'Ghost'];
  String _selectedOption = 'Pumpkin';

  TextEditingController _inputDateFieldController = new TextEditingController();

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
          _createDateField(context),
          Divider(),
          _createDropdown(),
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

  Widget _createDateField(BuildContext context) {
    return TextField(
      controller: _inputDateFieldController,
      enableInteractiveSelection: false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        hintText: 'Birth date',
        helperText: 'Birth date',
        suffixIcon: Icon(Icons.calendar_today_outlined),
        icon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2019),
      lastDate: new DateTime(2021),
      locale: Locale('ca', 'CA'),
    );

    if (picked != null) {
      setState(() {
        _date = picked.toString();
        _inputDateFieldController.text = _date;
      });
    }
  }

  List<DropdownMenuItem<String>> getDropdownOptions() {
    List<DropdownMenuItem<String>> list = new List();

    _movieObjects.forEach((obj) {
      list.add(DropdownMenuItem(
        child: Text(obj),
        value: obj,
      ));
    });

    return list;
  }

  Widget _createDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),
        Expanded(
          child: DropdownButton(
            items: getDropdownOptions(),
            value: _selectedOption,
            onChanged: (option) {
              setState(() {
                _selectedOption = option;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _displayValues() {
    return ListTile(
      title: Text('Name: $_name'),
      subtitle: Text('Email: $_email'),
      trailing: Text(_selectedOption),
    );
  }
}
