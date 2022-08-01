import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession; 

  const DoctorCard({
    Key? key,

    required this.doctorImagePath,
    required this.rating,
    required this.doctorName,
    required this.doctorProfession,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image.asset(
                doctorImagePath,
                height: 150,
              ),

            ),
            SizedBox(height: 5),
          
            Row(
              children: [
                Icon(Icons.star,
                color: Colors.yellow[500],
                ),
                Text(rating),
              ],
            ),
              SizedBox(height: 10),
            Text(doctorName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            //SizedBox(height: 5),
            Text(doctorProfession+' 7 an.Exp'),
          ],
        
        ),
       
      ),
      
    );
    
  }
}
