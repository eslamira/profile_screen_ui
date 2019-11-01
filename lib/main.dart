import 'package:flutter/material.dart';
import 'package:profile_screen_ui/profile_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Screen',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(242, 242, 242, 1),
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(242, 242, 242, 1),
          elevation: 0.0,
          iconTheme: IconThemeData(color: Color.fromRGBO(49, 49, 49, 1)),
          textTheme: TextTheme(
            title: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black,
                fontWeight: FontWeight.w700),
          ),
        ),
        textTheme: TextTheme(
          display1: TextStyle(
              fontFamily: 'Montserrat',
              color: Color.fromRGBO(42, 24, 24, 1),
              fontSize: 16.0,
              fontWeight: FontWeight.w700),
          display2: TextStyle(
              fontFamily: 'Montserrat',
              color: Color.fromRGBO(120, 132, 158, 1),
              fontSize: 12.0,
              fontWeight: FontWeight.w400),
          display3: TextStyle(
              fontFamily: 'Montserrat',
              color: Color.fromRGBO(138, 138, 138, 1),
              fontSize: 14.0,
              fontWeight: FontWeight.w400),
          display4: TextStyle(
              fontFamily: 'Montserrat',
              color: Color.fromRGBO(120, 132, 158, 1),
              fontSize: 18.0,
              fontWeight: FontWeight.w700),
          body1: TextStyle(
              fontFamily: 'Montserrat',
              color: Color.fromRGBO(153, 143, 162, 1),
              fontSize: 14.0,
              fontWeight: FontWeight.w500),
        ),
      ),
      home: ProfileScreen(title: 'PROFILE'),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _index = 0;
  List<Widget> _pages = List<Widget>();

  @override
  void initState() {
    super.initState();
    _pages
      ..add(Container(
        height: 440.0,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  ProfileCard('Meditation', 4.8),
                  ProfileCard('Yoga for', 4.8),
                  ProfileCard('Sushi Place', 4.8),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  ProfileCard('Meditation', 4.8),
                  ProfileCard('Yoga for', 4.8),
                  ProfileCard('Sushi Place', 4.8),
                ],
              ),
            ),
          ],
        ),
      ))
      ..add(Container())
      ..add(Container(
        height: 440.0,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  ProfileCard('Meditation', 4.8),
                  ProfileCard('Yoga for', 4.8),
                  ProfileCard('Sushi Place', 4.8),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  ProfileCard('Meditation', 4.8),
                  ProfileCard('Yoga for', 4.8),
                  ProfileCard('Sushi Place', 4.8),
                ],
              ),
            ),
          ],
        ),
      ))
      ..add(Container())
      ..add(Container());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          textScaleFactor: MediaQuery.of(context).size.width > 600 ? 1.5 : 1,
        ),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: <Widget>[Icon(Icons.search)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              'Youssif Mostafa',
              style: Theme.of(context).textTheme.display1,
              textScaleFactor:
                  MediaQuery.of(context).size.width > 600 ? 1.5 : 1,
            ),
            SizedBox(height: 4.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  size: 16,
                  color: Color.fromRGBO(120, 132, 158, 1),
                ),
                Text(
                  'Alexandria, Egypt',
                  style: Theme.of(context).textTheme.display2,
                  textScaleFactor:
                      MediaQuery.of(context).size.width > 600 ? 1.5 : 1,
                ),
              ],
            ),
            SizedBox(height: 4.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 85.0,
                    width: 85.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/place-holder.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: Text(
                      'Iam Youssif Mostafa Senior UI / UX is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been ',
                      style: Theme.of(context).textTheme.display2,
                      textScaleFactor:
                          MediaQuery.of(context).size.width > 600 ? 1.5 : 1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => setState(() => _index = 0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Books',
                          style: Theme.of(context).textTheme.display3.copyWith(
                              color: _index == 0
                                  ? Color.fromRGBO(255, 101, 94, 1)
                                  : null),
                          textScaleFactor:
                              MediaQuery.of(context).size.width > 600 ? 1.5 : 1,
                        ),
                        SizedBox(height: 8.0),
                        if (_index == 0)
                          Icon(
                            Icons.lens,
                            color: _index == 0
                                ? Color.fromRGBO(255, 101, 94, 1)
                                : null,
                            size: MediaQuery.of(context).size.width > 600
                                ? 12.0
                                : 8.0,
                          ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => _index = 1),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Places',
                          style: Theme.of(context).textTheme.display3.copyWith(
                              color: _index == 1
                                  ? Color.fromRGBO(255, 101, 94, 1)
                                  : null),
                          textScaleFactor:
                              MediaQuery.of(context).size.width > 600 ? 1.5 : 1,
                        ),
                        SizedBox(height: 8.0),
                        if (_index == 1)
                          Icon(
                            Icons.lens,
                            color: _index == 1
                                ? Color.fromRGBO(255, 101, 94, 1)
                                : null,
                            size: MediaQuery.of(context).size.width > 600
                                ? 12.0
                                : 8.0,
                          ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => _index = 2),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Trips',
                          style: Theme.of(context).textTheme.display3.copyWith(
                              color: _index == 2
                                  ? Color.fromRGBO(255, 101, 94, 1)
                                  : null),
                          textScaleFactor:
                              MediaQuery.of(context).size.width > 600 ? 1.5 : 1,
                        ),
                        SizedBox(height: 8.0),
                        if (_index == 2)
                          Icon(
                            Icons.lens,
                            color: _index == 2
                                ? Color.fromRGBO(255, 101, 94, 1)
                                : null,
                            size: MediaQuery.of(context).size.width > 600
                                ? 12.0
                                : 8.0,
                          ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => _index = 3),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Places',
                          style: Theme.of(context).textTheme.display3.copyWith(
                              color: _index == 3
                                  ? Color.fromRGBO(255, 101, 94, 1)
                                  : null),
                          textScaleFactor:
                              MediaQuery.of(context).size.width > 600 ? 1.5 : 1,
                        ),
                        SizedBox(height: 8.0),
                        if (_index == 3)
                          Icon(
                            Icons.lens,
                            color: _index == 3
                                ? Color.fromRGBO(255, 101, 94, 1)
                                : null,
                            size: MediaQuery.of(context).size.width > 600
                                ? 12.0
                                : 8.0,
                          ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => _index = 4),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Places',
                          style: Theme.of(context).textTheme.display3.copyWith(
                              color: _index == 4
                                  ? Color.fromRGBO(255, 101, 94, 1)
                                  : null),
                          textScaleFactor:
                              MediaQuery.of(context).size.width > 600 ? 1.5 : 1,
                        ),
                        SizedBox(height: 8.0),
                        if (_index == 4)
                          Icon(
                            Icons.lens,
                            color: _index == 4
                                ? Color.fromRGBO(255, 101, 94, 1)
                                : null,
                            size: MediaQuery.of(context).size.width > 600
                                ? 12.0
                                : 8.0,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            _pages[_index],
            SizedBox(height: 24.0),
            Text(
              'Who May Use the Services?',
              style: Theme.of(context).textTheme.display4,
              textScaleFactor:
                  MediaQuery.of(context).size.width > 600 ? 1.5 : 1,
            ),
            SizedBox(height: 12.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'When one door of happiness closes, another opens, but often we look so long at the closed door that we do not see the one that has been opened for us. ',
                style: Theme.of(context).textTheme.body1,
                textAlign: TextAlign.center,
                textScaleFactor:
                    MediaQuery.of(context).size.width > 600 ? 1.5 : 1,
              ),
            ),
            SizedBox(height: 24.0),
          ],
        ),
      ),
    );
  }
}
