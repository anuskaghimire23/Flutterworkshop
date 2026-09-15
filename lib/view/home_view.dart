import 'package:codeit/widgets/coursecard_widgets.dart';
import 'package:codeit/widgets/titlecard_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(),
      appBar: AppBar(title: Text("Code IT")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // w1
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.redAccent.shade100,
            ),
            SizedBox(height: 10),
            // w2
            TitleCard(title: 'Nepals Most Affordable IT training'),
            SizedBox(height: 10),
            // w3
            Text(
              "Quality Education \n Without Financial Barriers",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton.icon(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                  label: Text("Explore Courses"),
                ),
                SizedBox(width: 10),
                ElevatedButton.icon(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                  label: Text("Upcoming Classes"),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Icon(Icons.star),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("4.8/5", textAlign: TextAlign.start),
                          Text("Google Reviews"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                SizedBox(
                  child: Row(
                    children: [
                      Icon(Icons.person_3_sharp),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("100K+", textAlign: TextAlign.start),
                          Text("Student Trained"),
                        ],
                      ),
                    ],
                  ),
                ),

                // w6
              ],
            ),
            SizedBox(height: 10),
            TitleCard(title: "Next Batch Strating Soon"),
            // w7
            Text(
              "Upcomming Classes in google meet",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            SizedBox(
              height:140,
              width:double.infinity,
              child: ListView(
                scrollDirection:Axis.horizontal,
                children: [
                  CourseCard(
                    imageurl: "https://picsum.photos/200/300",
                    courseName: "Flutter",
                  ),
                    CourseCard(
                      imageurl: "https://picsum.photos/200/300",
                    courseName: "Python",
                    ),
                      CourseCard(
                        imageurl: "https://picsum.photos/200/300",
                    courseName: "Web Design",
                      ),
                        CourseCard(
                          imageurl: "https://picsum.photos/200/300",
                    courseName: "Flutter",
                        ),
                  
                ])),
          ],
        ),
      ),
    );
  }
}

