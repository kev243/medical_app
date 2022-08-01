import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    Key? key,
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
                'images/doctor1.jpg',
                height: 150,
              ),

            ),
            SizedBox(height: 5),
          
            Row(
              children: [
                Icon(Icons.star,
                color: Colors.yellow[500],
                ),
                Text('4.9'),
              ],
            ),
              SizedBox(height: 10),
            Text('Dr Jordan Nimi',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            //SizedBox(height: 5),
            Text('Dentiste, 7 an.exp'),
          ],
        
        ),
       
      ),
      
    );
    
  }
}
