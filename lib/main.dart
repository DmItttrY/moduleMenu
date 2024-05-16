import 'package:flutter/material.dart';
import 'package:test1/Categories.dart' as Categories;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FitnessAppPage(),
    );
  }
}

class FitnessAppPage extends StatefulWidget {
  @override
  _FitnessAppPageState createState() => _FitnessAppPageState();
}

class _FitnessAppPageState extends State<FitnessAppPage> {
  String _selectedCategory = 'abs';
  Categories.Category globalCategory = Categories.Category();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness App'),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildCategoryButton('abs'),
                _buildCategoryButton('arms'),
                _buildCategoryButton('weights'),
              ],
            ),
          ),
          Expanded(
            child: _buildWorkoutPlans(_selectedCategory),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryButton(String category) {
    bool isSelected = category == _selectedCategory;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedCategory = category;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: isSelected ? Colors.teal[200] : Colors.teal[50],
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            category,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _buildWorkoutPlans(String category) {
    List<Categories.Card> plans = [];

    if (category == 'abs') {
      plans = globalCategory.getAbs();
    } else if (category == 'arms') {
      plans = globalCategory.getArms();
    } else if (category == 'weights') {
      plans = globalCategory.getWeights();
    }

    return ListView.builder(
      itemCount: plans.length,
      itemBuilder: (context, index) {
        return _buildWorkoutPlan(
          plans[index].title,
          plans[index].duration,
          plans[index].timePerDay,
          plans[index].equipment,
        );
      },
    );
  }

  Widget _buildWorkoutPlan(
      String title, String duration, String timePerDay, String equipment) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal[100],
          border: Border.all(color: Colors.teal[100]!),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: Center(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: FractionallySizedBox(
                          widthFactor: 0.9,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/$title.jpg',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.0), // отступ сверху от "Days"
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[200],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Days: $duration',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10.0), // отступ между "Days" и "Time"
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[200],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '$timePerDay',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10.0), // отступ под "Time"
                    Text(
                      'Equipment: $equipment',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10.0), // отступ перед кнопкой
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepPurple[300],
                      ),
                      child: IconButton(
                        icon: Icon(Icons.play_arrow_outlined,
                            color: Colors.white),
                        onPressed: () {
                          // Add functionality for play button
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
