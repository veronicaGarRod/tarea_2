import 'package:flutter/material.dart';

class LugarDetalle extends StatelessWidget {
  const LugarDetalle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
           Column(
        children: [
          Container(
          width: 600,
          height: 240,
          decoration: BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(
          fit: BoxFit.cover,
          image:  NetworkImage("https://i.pinimg.com/564x/26/f0/e5/26f0e5b5562532675cedbeb42b8f8d76.jpg")
          ),
          )),
          Container(
          padding: EdgeInsets.all(32),
          child: Row(
          children: 
          [Expanded(
            child:Column
            ( crossAxisAlignment: CrossAxisAlignment.start,
              children:[
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child:Text("Oeschinen Lake Campground",style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),)),
              Text("Kandersteg, Switzerland",style: TextStyle(
                color: Colors.grey[500],
              ),)
            ],
            ),
          ),
            Icon(Icons.star,
              color: Colors.red[500],
            ),
               const Text('41'),
            ],
             
            ),
            
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButtonColumn(Theme.of(context).primaryColor, Icons.call, 'CALL'),
            _buildButtonColumn(Theme.of(context).primaryColor, Icons.near_me, 'ROUTE'),
            _buildButtonColumn(Theme.of(context).primaryColor, Icons.share, 'SHARE'),
          ],

          ) ,
          Padding(
        padding: EdgeInsets.all(32),
        child: Text(
          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
          softWrap: true,
        )),        
          
          ],
      ),

        ],
      )
    );
  }
}

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      //mainAxisSize: MainAxisSize.min,
     // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
