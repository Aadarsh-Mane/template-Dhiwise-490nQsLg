import 'package:flutter/material.dart';

class FarmerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0, // Set your desired width
      margin: EdgeInsets.all(16.0), // Adjust margin as needed
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 21, 23, 25),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Card Heading",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "lorem34 we wool aas ansamskams kasak sk aksnaks ",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Add your button action here
              },
              child: Text(
                "Action",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
