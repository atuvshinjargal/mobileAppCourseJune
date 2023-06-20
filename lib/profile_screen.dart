import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildProfileImage(context),
          _buildProfileDetails(context),
          _buildActions(context),
        ],
      ),
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: ClipOval(
        child: Image.asset(
          'assets/dog.jpeg',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ulambayar Battulga",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w600,
            ),
          ),
          _buildDetialsRow('AGE', '15'),
        ],
      ),
    );
  }

  Widget _buildDetialsRow(String heading, String value) {
    return Row(
      children: [
        Text(
          '$heading: ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text('$value'),
      ],
    );
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: Column(
            children: [
              Icon(
                Icons.restaurant,
                size: 40,
              ),
              Text("Feed"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: Column(
            children: [
              Icon(
                Icons.favorite,
                size: 40,
              ),
              Text("Pet"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: Column(
            children: [
              Icon(
                Icons.directions_walk,
                size: 40,
              ),
              Text("Walk"),
            ],
          ),
        ),
      ],
    );
  }
}
