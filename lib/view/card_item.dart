import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:random_api_calling/model/character_model.dart';
import 'package:random_api_calling/services/network_manager.dart';

import '../page/details_page.dart';

class Character extends StatefulWidget {
  const Character({super.key});

  @override
  State<Character> createState() => _CharacterState();
}

class _CharacterState extends State<Character> {
  CharacterApi characterApi = CharacterApi();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CharacterModel>(
        future: characterApi.fetchCharacter(),
        builder:
            (BuildContext context, AsyncSnapshot<CharacterModel> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: SpinKitCircle(
                size: 50,
                color: Colors.blue,
              ),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("ERROR"),
            );
          } else {
            if (snapshot.data != null && snapshot.data!.items != null) {
              final List<Items> items = snapshot.data!.items!;
            }
            return Container(
              height: MediaQuery.of(context).size.height * 6.9,
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: snapshot.data!.items!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsPage(
                                        image: snapshot
                                            .data!.items![index].image
                                            .toString(),
                                    name: snapshot.data!.items![index].name.toString(),
                                    description: snapshot.data!.items![index].description.toString(),)));
                          },
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * .20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: NetworkImage(snapshot
                                        .data!.items![index].image
                                        .toString()),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          snapshot.data!.items![index].name.toString(),
                          style: TextStyle(fontSize: 10, color: Colors.red),
                        )
                      ],
                    );
                  }),
            );
          }
        });
  }
}
