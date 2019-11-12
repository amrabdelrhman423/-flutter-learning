
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new StatHome();
  }

}

 class StatHome extends State<Home>{
   bool value1 =  true;
   bool value2 = false;
   bool value3 = true;
   String name='';
   bool value4=false;
   bool value5=true;
   bool value6=true;


   void OnChangeValue1(bool value){
     setState(() {
       value1 = value;
     });
   }

   void OnChangeValue2(bool value){
     setState(() {
       value2 = value;
     });
   }

   void OnChangeValue3(bool value){
     setState(() {
       value3 = value;
     });
   }
   void OnChangeValue4(bool value){
     setState(() {
       value4 = value;
     });
   }

   void OnChangeValue5(bool value){
     setState(() {
       value5 = value;
     });
   }
   void OnChangeValue6(bool value){
     setState(() {
       value4 = value;
     });
   }

   onChangeValue(String value){
     setState(() {
       name="On Change :$value";
     });
   }
   onSubmitValue(String value) {
     setState(() {
       name = "On Submitted : $value";
     });
   }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Hello Stateful widge"),
      ),
      body: new Container(
        alignment: Alignment.center,
        padding: new EdgeInsets.all(20),
        color: Colors.white,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('$name'),
            new TextField(
              autocorrect: true,
              autofocus: true,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                icon: new Icon(Icons.adb),
                 hintText: "Enter your name",
                labelText: "Enter first name"
              ),
              onChanged: onChangeValue,
              onSubmitted: onSubmitValue,
            ),

            new Checkbox(value: value1, onChanged: OnChangeValue1),
            new Checkbox(value: value2, onChanged: OnChangeValue2 ),
            new CheckboxListTile(
                value: value3,
                onChanged: OnChangeValue3,
              title: new Text("Check box"),
              activeColor: Colors.red,
              subtitle: new Text("hello sub titel"),
              secondary: new Icon( Icons.add_alarm),
            ),
            new Switch(value: value4, onChanged: OnChangeValue4),
            new Switch(value: value5, onChanged: OnChangeValue5),
            new SwitchListTile(
                value: value6,
                onChanged:OnChangeValue6 ,
                title: new Text("hello switch"),
              activeColor: Colors.red,
              subtitle: new Text("hello sub titel" ,style: new TextStyle(color: Colors.deepPurple,fontSize: 30,fontWeight: FontWeight.bold),),
              secondary: new Icon( Icons.airplanemode_active),
            )
          ],
        ),
      ),
      drawer: new Drawer(

        child: new Container(
          padding: EdgeInsets.all(13),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlatButton.icon(onPressed:()=>Navigator.pop(context), icon: new Icon(Icons.arrow_back), label: new Text("nav back")),
              new Text('$name'),
              new TextField(
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                    icon: new Icon(Icons.adb),
                    hintText: "Enter your name",
                    labelText: "Enter first name"
                ),
                onChanged: onChangeValue,
                onSubmitted: onSubmitValue,
              ),

              new Checkbox(value: value1, onChanged: OnChangeValue1),
              new Checkbox(value: value2, onChanged: OnChangeValue2 ),
              new CheckboxListTile(
                value: value3,
                onChanged: OnChangeValue3,
                title: new Text("Check box"),
                activeColor: Colors.red,
                subtitle: new Text("hello sub titel"),
                secondary: new Icon( Icons.add_alarm),
              ),
              new Switch(value: value4, onChanged: OnChangeValue4),
              new Switch(value: value5, onChanged: OnChangeValue5),
              new SwitchListTile(
                value: value6,
                onChanged:OnChangeValue6 ,
                title: new Text("hello switch"),
                activeColor: Colors.red,
                subtitle: new Text("hello sub titel" ,style: new TextStyle(color: Colors.deepPurple,fontSize: 30,fontWeight: FontWeight.bold),),
                secondary: new Icon( Icons.airplanemode_active),
              )
            ],
          ),
        ),
      ),
    );
  }

 }