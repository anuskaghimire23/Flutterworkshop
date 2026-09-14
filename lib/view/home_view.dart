import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("About"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
                trailing: Icon(Icons.settings),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {},
              ),
            ],
          ),
        ),

        appBar: AppBar(
          title: Text("Code IT"),
        ),

        body: Column(
          children: [
            // w1
            Container(
              height: 70,
              width: 200,
              child: Image.network(
                "https://images.unsplash.com/photo-1773332611476-6ec2ba68049f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxfHx8ZW58MHx8fHx8",
                fit: BoxFit.cover,
              ),
            ),
        
            SizedBox(height: 30),
        
            // w2
            Text(
              "Nepal's Most affordable IT training ",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
        
            SizedBox(height: 30),
        
            // Orange Container
            Center(
              child: Container(
                height: 50,
                width: 226,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    "Quality Education Without Financial Barriers",
                  ),
                ),
              ),
            ),
        
            SizedBox(height: 30),
        
            // w3
            FilledButton(
              onPressed: () {},
              child: Text("Click me"),
            ),
        
            SizedBox(height: 30),
        
            // w4
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.home),
                  SizedBox(width: 30),
                  Text(
                    "Get job-ready with live classes,\n"
                    " lifetime access, and a guaranteed internship \n"
                    "- all for less than Rs.2,500.",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}