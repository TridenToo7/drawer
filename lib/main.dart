import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: Text('Gmail'),
        backgroundColor: Colors.black38,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text('Md.Monoar Hossain'), accountEmail: Text('mhshanto1313@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/0.jpg'),
                radius: 200,

              ),
              decoration: BoxDecoration(
                color:Colors.green,
              ),
            ),
            ListTile(
              title: Text('Inbox'),
              trailing: Icon(Icons.inbox),
              tileColor:Colors.lightGreenAccent,
            ),
            ListTile(
              title: Text('Send'),
              trailing: Icon(Icons.send),
              tileColor:Colors.lime,
            ),
            ListTile(
              title: Text('Drafts'),
              trailing: Icon(Icons.drafts),
              tileColor:Colors.limeAccent,
            ),
            ListTile(
              title: Text('Scheduled'),
              trailing: Icon(Icons.schedule),
              tileColor:Colors.yellow,
            ),
            ListTile(
              title: Text('Important'),
              trailing: Icon(Icons.label_important),
              tileColor:Colors.yellowAccent,
            ),
            ListTile(
              title: Text('Trash'),
              trailing: Icon(CupertinoIcons.trash),
              tileColor:Colors.lightGreenAccent,
            ),
            ListTile(
              title: Text('Forward'),
              trailing: Icon(Icons.forward_10),
              tileColor:Colors.lightGreen,
            ),
            ListTile(
              title: Text('Settings'),
              trailing: Icon(Icons.settings),
              tileColor:Colors.green,
            ),
          ],
        ),
      ),

    );
  }
}