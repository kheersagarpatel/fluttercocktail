import 'package:flutter/material.dart';
import 'package:fluttercocktail/main.dart';

class DrinkDetail extends StatelessWidget {
  final drink;

  const DrinkDetail({super.key, required this.drink});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            myColor,
            Colors.orange,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(drink["strDrink"]),
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: drink["idDrink"],
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: NetworkImage(drink["strDrinkThumb"]),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "ID: ${drink["idDrink"]}",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "${drink["strDrink"]}",
                style: const TextStyle(
                  fontSize: 22,
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
