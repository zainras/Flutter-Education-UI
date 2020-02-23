import 'package:flutter/material.dart';
import 'package:myworld/app_theme.dart';
import 'package:myworld/views/course/detail_course.dart';

class CourseScreeen extends StatefulWidget {
  @override
  _CourseScreeen createState() => _CourseScreeen();
}

class _CourseScreeen extends State<CourseScreeen> {
  @override
  Widget build(BuildContext context) {

    var dataLesson = [
      {
        'title': 'Lesson one',
        'description': 'Lorem ipsum des ammet',
        'time': '10:00',
      },
      {
        'title': 'Lesson two',
        'description': 'Lorem ipsum des ammet',
        'time': '13:00',
      },
      {
        'title': 'Lesson three',
        'description': 'Lorem ipsum des ammet',
        'time': '15:00',
      },
    ];

    Widget profileHeader = Container(
      color: Colors.white,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Schedule today', style: TextStyle(fontSize: 14)),
                  Text('Monday, 10/02/2020', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueAccent,
                    ),
                    child: Text(
                      dataLesson.length.toString(), 
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24.0)
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    Widget listLesson = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: _buildRowLesson(dataLesson[index]['title'], dataLesson[index]['description'], dataLesson[index]['time']),
          );
        },
        itemCount: dataLesson.length,
      ),
    );

    // button show all
    Widget buttonShowAll = Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
      ),
      child: Center(
        child: Text('Show All Course', style: TextStyle(color: Colors.white)),
      ),
    );

    return MaterialApp(
      title: 'Course',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme.textTheme,
        platform: TargetPlatform.iOS,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Course'),
        ),
        body: ListView(
          children: [
            profileHeader,
            buttonShowAll,
            listLesson,
          ],
        ),
      ),
    );
  }

  // function build row lesson
  Container _buildRowLesson(String title, String description, String time) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 16.0, top: 16.0),
      child: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailCourse())),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            Text(time),
          ],
        ),
      )
    );
  }
}