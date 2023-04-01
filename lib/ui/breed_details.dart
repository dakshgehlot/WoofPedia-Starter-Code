import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:woofpedia/ui/details_text.dart';

class BreedDetails extends StatefulWidget {
  const BreedDetails({Key? key}) : super(key: key);

  @override
  State<BreedDetails> createState() => _BreedDetailsState();
}

class _BreedDetailsState extends State<BreedDetails> {
  // TODO: Uncomment this
  //Map data = {};

  @override
  Widget build(BuildContext context) {

    // TODO: Uncomment this
    // data = data.isNotEmpty
    //     ? data
    //     : ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      backgroundColor: const Color(0xf8f8f8ff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),

                      // TODO: ADD correct image attribute
                      child: CachedNetworkImage(
                        imageUrl: 'assets/images/image-not-found-dog.jpg',
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => const Image(
                            image: AssetImage(
                                'assets/images/image-not-found-dog.jpg')),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0, 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(

                      // TODO: ADD NAME
                      "NAME GOES HERE",
                      style: const TextStyle(
                        color: Color(0xFF284065),
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        fontFamily: 'BebasNeue',
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    DetailsText(
                        text: "Height", weight: FontWeight.bold, size: 16),
                    DetailsText(
                        text: "Weight", weight: FontWeight.bold, size: 16),
                    DetailsText(
                        text: "Lifespan", weight: FontWeight.bold, size: 16),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // TODO: ADD ALL DETAILS
                    DetailsText(
                        text: "ADD HEIGHT",
                        weight: FontWeight.w400,
                        size: 14),
                    DetailsText(
                        text: "ADD WEIGHT",
                        weight: FontWeight.w400,
                        size: 14),
                    DetailsText(
                        text: "ADD LIFESPAN",
                        weight: FontWeight.w400,
                        size: 14),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: DetailsText(
                    // TODO: ADD DESCRIPTION
                      text: "ADD DESCRIPTION",
                      weight: FontWeight.w400,
                      size: 14),
                ),
                const SizedBox(height: 50),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFF284065)),
                    foregroundColor: const Color(0xFF284065),
                    textStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  child: const Text("Search again"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
