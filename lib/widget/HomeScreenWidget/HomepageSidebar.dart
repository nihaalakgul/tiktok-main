import 'package:flutter/material.dart';
import 'package:tiktok/widget/HomeScreenwidget/userprofile.dart';

class HomepageSidebar extends StatefulWidget {
  const HomepageSidebar({super.key});

  @override
  State<HomepageSidebar> createState() => _HomepageSidebarState();
}

class _HomepageSidebarState extends State<HomepageSidebar> {
  
  TextStyle style = const TextStyle(color: Colors.white, fontSize: 11);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        10.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _Profile(),
          const SizedBox(
            height: 20,
          ),
          _Sidebarlikes(
              const Icon(
                Icons.favorite,
                color: Colors.white,
                size: 30,
              ),
              "500",
              style),
          const SizedBox(
            height: 15,
          ),
          _Sidebarlikes(
              Image.asset(
                "images/comments.png",
                height: 35,
                width: 35,
                fit: BoxFit.cover,
                color: Colors.white,
              ),
              "1200",
              style),
          const SizedBox(
            height: 15,
          ),
          _Sidebarlikes(
              Image.asset(
                "images/save.png",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
                color: Colors.white,
              ),
              "500",
              style),
          const SizedBox(
            height: 15,
          ),
          _Sidebarlikes(
              Image.asset(
                "images/share.png",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
                color: Colors.white,
              ),
              "2400",
              style),
          const SizedBox(
            height: 20,
          ),
        
        ],
      ),
    );
  }

  _Sidebarlikes(Widget iconname, String label, TextStyle style) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: iconname,
        ),
        Text(
          label,
          style: style,
        )
      ],
    );
  }

  _Profile() {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const UserProfile();
          },
        ));
      },
      child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(40),
                  image: const DecorationImage(
                      image: AssetImage("images/tiktoks.png"),
                      // image: NetworkImage(
                      //     "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D"),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: -10,
              child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 245, 20, 4),
                      borderRadius: BorderRadius.circular(25)),
                  child: const Icon(
                    Icons.add,
                    size: 14,
                    color: Colors.white,
                  )),
            )
          ]),
    );
  }
}
