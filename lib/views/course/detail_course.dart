import 'package:flutter/material.dart';
import 'package:myworld/components/button_round.dart';

class DetailCourse extends StatefulWidget {
  @override
  _DetailCourse createState() => _DetailCourse();
}

class _DetailCourse extends State<DetailCourse> {
  @override
  Widget build(BuildContext context) {

    var dataAttadance = [
      {
        'title': 'John Doe',
        'description': 'Lorem ipsum des ammet',
        'status': 'attend',
      },
      {
        'title': 'Rachel Wang',
        'description': 'Lorem ipsum des ammet',
        'status': 'not_attend',
      },
      {
        'title': 'David Lee',
        'description': 'Lorem ipsum des ammet',
        'status': '',
      },
    ];
    
    // Widget Attandance
    Widget attandanceTab = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: _buildRowAttandance(dataAttadance[index]['title'], dataAttadance[index]['description'], dataAttadance[index]['status']),
          );
        },
        itemCount: dataAttadance.length,
      ),
    );
    // Widget progress study

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Text("Attandance")),
                Tab(icon: Text('Progress')),
              ],
            ),
            title: Text('Lesson One'),
          ),
          body: TabBarView(
            children: [
              attandanceTab,
              Icon(Icons.directions_transit),
            ],
          ),
        ),
      ),
    );
  }


  // function build row lesson
  Container _buildRowAttandance(String title, String description, String status) {
    return Container(
      color: Colors.white,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => debugPrint('hai!!!'),
          onLongPress: () => debugPrint('on long press!!'),
          child: Container(
            padding: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 16.0, top: 16.0),
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
                btnCheckList(status),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BtnRound btnCheckList(String status) {
    Icon fillIcon;
    Color bgcolor;
    if(status == "attend") {
      fillIcon = Icon(Icons.check, color: Colors.white, size: 18,);
      bgcolor = Colors.green;
    } else if (status == "not_attend") {
      fillIcon = Icon(Icons.clear, color: Colors.white, size: 18,);
      bgcolor = Colors.redAccent;
    } else {
      fillIcon = Icon(Icons.remove, color: Colors.white, size: 18,);
      bgcolor = Colors.grey;
    }

    return BtnRound(
      bgcolor: bgcolor,
      child: fillIcon,
    );
  }
}