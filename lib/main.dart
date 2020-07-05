import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Now we need multiple widgets into a parent = "Container widget"
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),// Top, Right, Bottom, Left
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: new Text(
                      "Technology Channel",
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0
                      ),
                    ),
                  ),
                  // need to add space below this Text ?
                  new Text("This channel contains tutorial videos in hack Nasa with HTML,"
                      " hack Facebook with pascal and how to xss Divine Shop",
                    style: new TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16.0
                    ),
                  ),
                ],
              )
          ),
          new Icon(Icons.favorite, color: Colors.red,),
          new Text(" 100K",style: new TextStyle(fontSize: 16.0),),
        ],
      ),
    );
    Widget buildButton(IconData icon, String buttonTitle){
      final Color tintColor = Colors.blue;
      return new Column(
        children: <Widget>[
          new Icon(icon, color: tintColor),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(buttonTitle, style: TextStyle(fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: tintColor
            ),),
          )
        ],
      );

    }
    Widget fourButtonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButton(Icons.home, "Home"),
          buildButton(Icons.arrow_back, "Back"),
          buildButton(Icons.arrow_forward, "Next"),
          buildButton(Icons.share, "Share"),
        ],
      ),
    );
    final bottomTextSection = new Container(
      padding: const EdgeInsets.all(10.0),
      //How to show long text?
      child: new Text('''  Được thành lập vào tháng 4/2020, KB2A là một nhóm công nghệ. Được tạo ra nhằm mục đích tạo ra những sản phẩm hướng đến cộng đồng, ngoài ra KB2A Team còn nhận thực hiện các dự án như : thiết kế website, phần mềm, ứng dụng điện thoại,... Mỗi dự án của KB2A luôn đề cao chất lượng để từ đó tạo được uy tín cho thương hiệu. Niềm vui của chúng tôi là được các bạn ủng hộ chúng tôi trong mỗi dự án. Hãy cùng nhau phát triển công nghệ nước nhà bằng cách theo dõi chúng tôi trên Channel và Fanpage nhé!
      ''',
      style: new TextStyle(
        color: Colors.grey[850],
        fontSize: 16.0
      ),
      ),
    );
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text("EpitchiTube"),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/logo_kb2a.jpg',
              fit:BoxFit.cover
            ),
            //You can add more widget bellow
            titleSection,
            fourButtonSection,
            bottomTextSection,
          ],
        )
      )
    );
  }
}