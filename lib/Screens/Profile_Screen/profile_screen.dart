import 'package:flutter/material.dart';
import 'package:tiktok/Screens/Profile_Screen/edit_Profile.dart';
import 'package:tiktok/Screens/Profile_Screen/fullscreenvideo.dart';
import 'package:tiktok/widget/profilebutton.dart';

import 'package:video_player/video_player.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List viewlist = [
    "143",
    "3232",
    "423",
    "626",
    "893"
        "238",
    "2349",
    "3215",
    "24366",
    "70425",
    "205",
    "345k",
    "345k",
  ];

  final List<String> videoPaths = [
    'images/video.mp4',
    "images/video2.mp4",
    'images/video3.mp4',
    "images/video4.mp4",
  ];
  List<VideoPlayerController> _videoControllers = [];

  @override
  void initState() {
    super.initState();
    for (String path in videoPaths) {
      _videoControllers.add(VideoPlayerController.asset(path)
        ..initialize().then((_) {
          setState(
              () {}); // Ensure the video player updates after initialization
        }));
    }
  }

  @override
  void dispose() {
    for (var controller in _videoControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'nihal',
          style: TextStyle(fontSize: 14),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                fit: StackFit.loose,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.black12,
                    // backgroundImage: NetworkImage(
                    //     '),
                  ),
                  Positioned(
                      bottom: 5,
                      right: 5,
                      child: Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 19,
                          )))
                ],
              ),
              const Text(
                '@nihalakgul',
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 9,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        '22',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '16',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '23',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Likes',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  profileButtons(
                    tittle: 'Edit Profile',
                    ontap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const EditProfilescreen();
                        },
                      ));
                    },
                    color: Colors.black12,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  profileButtons(
                    tittle: 'Share Profile',
                    ontap: () {},
                    color: Colors.black12,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "+ Add bio",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300),
              ),
              const Text(
                '',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 15,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: videoPaths.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 1.0,
                    mainAxisSpacing: 1.0),
                itemBuilder: (context, index) {
                  //String pathv = 'Assets/Vadioes/vadioone.mp4';
                  // VideoPlayerController videoPlayerController =
                  //     VideoPlayerController.asset(pathv);
                  String path = videoPaths[index];
                  VideoPlayerController controller = _videoControllers[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FullScreenVideo(
                            videoPaths: videoPaths,
                            initialIndex: index,
                          ),
                        ),
                      );
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                            height: 500,
                            width: 300,
                            child: controller.value.isInitialized
                                ? AspectRatio(
                                    aspectRatio: controller.value.aspectRatio,
                                    child: VideoPlayer(controller),
                                  )
                                : const Center(
                                    child: CircularProgressIndicator())),
                        Positioned(
                            bottom: 5,
                            left: 4,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.view_module,
                                  size: 10,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "${viewlist[index]}",
                                  style: const TextStyle(fontSize: 10),
                                ),
                              ],
                            ))
                      ],
                    ),
                  );

             
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
