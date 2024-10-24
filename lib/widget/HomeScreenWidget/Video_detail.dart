import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VaidioDetail extends StatefulWidget {
  const VaidioDetail({super.key});

  @override
  State<VaidioDetail> createState() => _VaidioDetailState();
}

class _VaidioDetailState extends State<VaidioDetail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "@nihalakgul",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
 
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(
                CupertinoIcons.music_note_2,
                size: 15,
                color: Colors.white,
              ),
              const SizedBox(
                width: 8,
              ),
              SizedBox(
                height: 20,
                width: MediaQuery.of(context).size.width / 2,
              
              )
            ],
          )
        ],
      ),
    );
  }
}
