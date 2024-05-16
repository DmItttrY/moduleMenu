import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FitnessScreen(),
    );
  }
}

class FitnessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0), // Hide the app bar
          child: AppBar(
            automaticallyImplyLeading: false, // Hide the back button
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 16.0), // Add padding to the top
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                'assets/fitnes.jpeg', // Make sure this image exists
                fit: BoxFit.cover, // Cover the entire space available
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Description:',
                  style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold, color: Colors.deepPurple[200]),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 16.0), // Reduced bottom padding here
                child: Text(
                  'Build abs of your dream with this beginner friendly workout!',
                  style: TextStyle(fontSize: 21, color: Colors.deepPurple[200]), // Text color changed to purple
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.teal[100],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Text(
                                      'DAY 1',
                                      style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.bookmark_added_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 8.0),
                                  ],
                                ),
                              ),
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.deepPurple[300],
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.play_arrow_outlined, color: Colors.white),
                                  onPressed: () {
                                    // Add functionality for play button
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.teal[100],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'DAY 2',
                                    style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.deepPurple[300],
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.play_arrow_outlined, color: Colors.white),
                                  onPressed: () {
                                    // Add functionality for play button
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.teal[100],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'DAY 3',
                                    style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.deepPurple[300],
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.play_arrow_outlined, color: Colors.white),
                                  onPressed: () {
                                    // Add functionality for play button
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Add more days as needed
                  ],
                ),
              ),
              SizedBox(height: 80.0), // Add extra space at the bottom for the bottom navigation bar
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home', // 'title' has been replaced with 'label'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.fitness_center),
                label: 'Workout', // 'title' has been replaced with 'label'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile', // 'title' has been replaced with 'label'
              ),]
        )

    );
  }
}
