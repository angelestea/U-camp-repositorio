import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Aplicación de registros'),
          ),
        body:
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                  "Nombre",
                    style: new TextStyle(fontSize:23.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
                  )
                ]
    
              ),
    
              new Padding(
                child:
                  new TextField(
                    style: new TextStyle(fontSize:7.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
                  ),
    
                padding: const EdgeInsets.all(24.0),
              ),
    
              new Padding(
                child:
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                      "Edad",
                        style: new TextStyle(fontSize:23.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                      ),
    
                      new Slider(key: null, onChanged: sliderChanged, value:0.35,)
                    ]
    
                  ),
    
                padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 24.0),
              ),
    
              new Padding(
                child:
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                      "Escolaridad",
                        style: new TextStyle(fontSize:23.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                      ),
    
                      new DropdownButton<String>(
                        onChanged: popupButtonSelected,
                        value: "Child 1",
                        style: new TextStyle(fontSize:23.0,
                        color: const Color(0xFF202020),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                        items: <DropdownMenuItem<String>>[
                          const DropdownMenuItem<String>(value: "Child 1",
                            child: const Text("Child 1")),
                          const DropdownMenuItem<String>(value: "Child 2",
                            child: const Text("Child 2")),
                          const DropdownMenuItem<String>(value: "Child 3",
                            child: const Text("Child 3")),
                        ],
                      )
                    ]
    
                  ),
    
                padding: const EdgeInsets.fromLTRB(17.0, 0.0, 24.0, 0.0),
              ),
    
              new Container(
                child:
                  new Container(
                    child:
                      new Center(
                        child:
                          new Image.network(
                            'https://www.revistacompensar.com/wp-content/uploads/2020/11/236.jpg',
                            fit:BoxFit.fill,
                            ),
    
                      ),
    
                    color: const Color(0xFFfafafa),
                    padding: const EdgeInsets.all(0.0),
                    alignment: Alignment.center,
                    width: 410.0,
                    height: 245.0,
                  ),
    
                color: const Color(0xFFff0000),
                alignment: Alignment.center,
                width: 150.0,
                height: 250.0,
              )
            ]
    
          ),
    
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.done),
          onPressed: fabPressed),
      );
    }
    void sliderChanged(double value) {}
    
    void popupButtonSelected(String value) {}
    
    void fabPressed() {}
    
}