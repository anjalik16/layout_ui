import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Form Demo',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new MyHomePage(title: 'Flutter Form Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new SafeArea(
        top: false,
        bottom: false,
        child: new Form(
          key: _formKey,
          autovalidate: true,
          child: new ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: <Widget>[
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.people),
                  hintText: 'Enter your gender',
                  labelText: 'Gender',
                ),
              ),
              new TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.calendar_today),
                  hintText: 'Enter your date of birth',
                  labelText: 'DOB',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person_outline),
                  hintText: 'Enter your ethnicity',
                  labelText: 'Ethnicity',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person_pin),
                  hintText: 'Enter your home state',
                  labelText: 'Home State',
                ),
              ),
              new TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.poll),
                  hintText: 'Enter your SAT Score',
                  labelText: 'SAT Score',
                ),
              ),
              new TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.flare),
                  hintText: 'Enter your Unweighted Cumulative GPA',
                  labelText: 'GPA',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.star),
                  hintText: 'Enter your First Choice Major',
                  labelText: 'Major',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.home),
                  hintText: 'Enter if you want to stay in home state',
                  labelText: 'State',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.beach_access),
                  hintText: 'Enter if you want cold or no cold',
                  labelText: 'Climate',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.school),
                  hintText: 'Enter if you want a big or small school',
                  labelText: 'College Size',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.public),
                  hintText: 'Enter if you want a public or private school',
                  labelText: 'College Type',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.label_important),
                  hintText: 'Enter if you want a more equal gender ratio',
                  labelText: 'Gender Ratio',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.rowing),
                  hintText: 'Enter if you want sports',
                  labelText: 'Sports',
                ),
              ),
              new TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.nature),
                  hintText: 'Enter if you have volunteer/work hours',
                  labelText: 'Volunteer/Work Hours',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}