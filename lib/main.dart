import 'package:flutter/material.dart';

void main() {
  runApp(const CuacaApp());
}

class CuacaApp extends StatelessWidget {
  const CuacaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeatherApp',
      debugShowCheckedModeBanner: false,
      home: CuacaScreen(),
    );
  }
}

class CuacaScreen extends StatelessWidget {
  const CuacaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App', style: TextStyle(fontSize: 25, fontFamily: 'Poppins', color: Colors.white)),
        centerTitle: true,
        leading: Icon(Icons.list, color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(Icons.map, color: Colors.white),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade900, const Color.fromARGB(255, 0, 0, 0)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              Text(
                'Blitar',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Today',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '33°C',
                style: TextStyle(
                  fontSize: 120,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Divider(
                color: Colors.white,
                thickness: 3,
                indent: 50,
                endIndent: 50,
              ),
              SizedBox(height: 20),
              Text(
                'Sunny',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.wind_power, color: const Color.fromARGB(255, 104, 102, 102)),
                  SizedBox(width: 10),
                  Text(
                    '3 km/h',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 5, 10, 40),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Next 10 days',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(4, (index) {
                        List<String> times = ['Now', '17.00', '20.00', '23.00'];
                        return Column(
                          children: [
                            Text(times[index], style: TextStyle(fontSize: 20, color: Colors.white)),
                            Icon(Icons.ac_unit, color: Colors.blue, size: 30),
                            Text('28°C', style: TextStyle(fontSize: 16, color: Colors.blueAccent)),
                            Icon(Icons.wind_power, color: Colors.grey, size: 30),
                            Text('10 km/h', style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 104, 102, 102))),
                            Icon(Icons.water_drop, color: Colors.blue, size: 30),
                            Text('50%', style: TextStyle(fontSize: 16, color: Colors.blue)),
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Developed by: nauvalachid',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}