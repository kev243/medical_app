import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicalapp/doctor_card.dart';
import 'category_card.dart';
import 'doctor_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            //app bar

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 7),
                      Text(
                        'Kevin Nimi',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(8.00),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon((Icons.person)))
                ],
              ),
            ),

            //card////////////////

            SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    //animation picture
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.deepPurple[300],
                    ),
                    SizedBox(width: 20),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Comment vous sentez vous?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(height: 12),
                          Text('Remplissez votre carte médicale dès maintenant',
                              style: TextStyle(fontSize: 13)),
                          SizedBox(height: 12),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(child: Text('Commencer')),
                          )
                        ],
                      ),
                    ),

                    //
                  ],
                ),
              ),
            ),

            //barre de recherche

            SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'Comment pouvons-nous vous aider?',
                  ),
                ),
              ),
            ),

            SizedBox(height: 25),

            //categorie

            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    iconImagePath: 'icons/tooth-outline.png',
                    categoryName: 'Dentiste',
                  ),
                  CategoryCard(
                    iconImagePath: 'icons/doctor.png',
                    categoryName: 'Chirugien',
                  ),
                  CategoryCard(
                    iconImagePath: 'icons/capsules.png',
                    categoryName: 'Pharmacie',
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            //liste docteur
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Liste Docteur',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Tout voir',
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            Expanded(
                child: Container(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorCard(
                    doctorImagePath: 'images/doctor1.jpg',
                    rating: '4.9',
                    doctorName: 'Dr Jordan Nimi',
                    doctorProfession: 'Dentiste',
                  ),
                  DoctorCard(
                    doctorImagePath: 'images/doctor3.jpg',
                    rating: '4.9',
                    doctorName: 'Mme Benie Nime',
                    doctorProfession: 'Churigienne',
                  ),
                  DoctorCard(
                    doctorImagePath: 'images/doctor2.jpg',
                    rating: '4.9',
                    doctorName: 'Mme Chrissie Nimi',
                    doctorProfession: 'Pharmacienne',
                  ),
                  SizedBox(height: 35),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
