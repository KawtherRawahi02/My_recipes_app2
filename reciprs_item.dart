import 'package:flutter/material.dart';
import 'package:myrecipesapp/models/recipes.dart';

class ReciptsItems extends StatelessWidget {
  //const ReciptsItems({ Key? key }) : super(key: key);
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  ReciptsItems(
      {this.id,
      this.title,
      this.imageUrl,
      this.duration,
      this.complexity,
      this.affordability});

  String get complixityText {
    switch (complexity) {
      case Complexity.easy:
        return 'easy';
        break;

      case Complexity.medium:
        return 'medium';
        break;

      case Complexity.hard:
        return 'Hard';
        break;
    }
  }

  String get affordText {
    switch (affordability) {
      case Affordability.affordability:
        return 'affordability';
        break;

      case Affordability.Pricey:
        return 'Pricey';
        break;

      case Affordability.Luxurious:
        return 'Luxurious';
        break;
    }
  }

  void selectRecipets() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectRecipets,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 10,
        margin: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      height: 300,
                      width: double.infinity,
                    )),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Icon(Icons.timer),
                        SizedBox(
                          width: 6,
                        ),
                        Text('$duration min'),
                      ]),
                      Row(children: <Widget>[
                        Icon(Icons.work),
                        SizedBox(
                          width: 6,
                        ),
                        Text(complixityText),
                      ]),
                      Row(children: <Widget>[
                        Icon(Icons.money),
                        SizedBox(
                          width: 6,
                        ),
                        Text(affordText),
                      ])
                    ]))
          ],
        ),
      ),
    );
  }
}
