import 'package:flutter/material.dart';
import 'package:random_api_calling/view/card_item.dart';
class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key,required this.image,required this.name,required this.description});
  final String image,name,description;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*.7,
              width: double.infinity,

              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.only(bottomLeft:Radius.circular(40),bottomRight: Radius.circular(40)),
                image: DecorationImage(

                    image: NetworkImage(widget.image,))

              ),
            ),
            SizedBox(height: 15,),
            Text(widget.name,style: TextStyle(fontSize: 30,color: Colors.red),),
            SizedBox(
              height: 10,
            ),
            Text(widget.description,style: TextStyle(fontSize: 15,color: Colors.black87,letterSpacing: .5),)
          ],
        ),
      ),
    );
  }
}
