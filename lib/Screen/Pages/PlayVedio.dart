// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

import '../Responsive.dart';

class VideoListPage extends StatelessWidget {
  final List<Map<String, String>> videos = [

    {
      'videoUrl': 'Asset/vedios/Arab Idol - الأداء - محمد عساف - ياريت فيي خبيها.mp4',
      'caption': 'Arab idol-محمد عساف-ياريت في خبيها ',
    },
     {
      'videoUrl':'Asset/vedios/القاضيه ممكن.mp4',
      'caption':'CAF 2020 هدف افشه في الزمالك ' 
    },
    {
      'videoUrl': 'Asset/vedios/أحمد جمال حبيبي يا نور العين 😍😍+فرح يوسف الي تمنيتو 😍😍.mp4',
      'caption':'Arab Idol 2-احمد جمال , فرح يوسف ',
    },
     {
      'videoUrl': 'Asset/vedios/لو سمحت ممكن اتله واحد لو سمحت  مش باللمس انا مش قاصد😂 ترند سواق الميكروباص #ترند جديد.mp4',
      'caption': ' -في حاجه اسمعها بوج'    ,
    },
    
    {
      'videoUrl': 'Asset/vedios/غنى بو حمدان – نقيلي أحلى زهرة - مرحلة المواجهة الأخيرة – MBCTheVoiceKids.mkv',
      'caption': 'غني بو حمدان – نقيلي أحلى زهرة -The Voice',
    },
    {
      'videoUrl': 'Asset/vedios/Arab Idol - حلقة الشباب - محمد عساف - شو جابك.mp4',
      'caption': ' Arab-idol-محمد عساف - شو جابك',
    },

  
      {
      'videoUrl':'Asset/vedios/إبداع عصام الشوالي في هدف شيكابالا كاملة ❤.mp4',
      'caption':'هدف شيكابالا في الاهلي 2020'
    },
     
    {
      'videoUrl': 'Asset/vedios/WhatsApp Video 2023-08-06 at 12.24.32.mp4',
      'caption': 'Caption for video 1',
    },

    // Add more videos with captions
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 20, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Videos',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ResponsivePage();
                      }));
                    },
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      size: 40,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1000,
              child: ListView.builder(
                itemCount: videos.length,
                itemBuilder: (BuildContext context, int index) {
                  final video = videos[index];
                  return VideoPlayerWidget(
                    videoUrl: video['videoUrl']!,
                    caption: video['caption']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;
  final String caption;

  const VideoPlayerWidget({
    Key? key,
    required this.videoUrl,
    required this.caption,
  }) : super(key: key);

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  bool Ficon = false;
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: false,
      autoInitialize: false,
      allowedScreenSleep: true,
      allowMuting: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Chewie(
          controller: _chewieController,
        ),
        Positioned(
          bottom: 150,
          right: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    Ficon = !Ficon;
                  });

                  // Add your favorite action here
                },
                icon: Icon(
                  Icons.favorite,
                  size: 35,
                ),
                color: Ficon ? Colors.red : Colors.white,
              ),
              SizedBox(
                height: 15,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.comment,
                  size: 33,
                ),
                color: Colors.white,
              ),
              SizedBox(
                height: 15,
              ),
              IconButton(
                onPressed: () {
                  // Add your share action here
                },
                icon: Icon(
                  Icons.share,
                  size: 33,
                ),
                color: Colors.white,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 100,
          left: 0,
          right: 0,
          child: Container(
            // color: Colors.black.withOpacity(0.6),
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text(
              widget.caption,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}