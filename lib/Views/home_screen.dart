import 'package:flutter/material.dart';
import 'package:flutter_health_care_app_ui/utils/constants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, size: 32),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Image(
              width: 48,
              height: 48,
              image: AssetImage(UImages.profile),
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose Your Doctor',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text('100+ Available', style: TextStyle(fontSize: 15)),

              SizedBox(height: 30),

              SearchBar(leading: Icon(Icons.search), hintText: 'Search Doctors'),
            ],
          ),
        ),
      ),
    );
  }
}
