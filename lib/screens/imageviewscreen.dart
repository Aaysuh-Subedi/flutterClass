import 'package:flutter/material.dart';

class Imageviewscreen extends StatelessWidget {
  const Imageviewscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/image1.jpg'),
            Image.asset('assets/images/image2.jpg'),
            Image.network(
              'https://dw9to29mmj727.cloudfront.net/promo/2016/5265-SeriesHeaders_OP_2000x800_wm.jpg',
            ),
            Image.network(
              'https://cdn.oneesports.gg/cdn-data/2023/04/Anime_OnePiece_WanoCountryArc_Wallpaper-1024x576.jpg',
            ),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMTXcQK2U8TkQRMnlY_RdQ7T5lsCeMXjt8FA&s',
            ),
            Image.network(
              'https://niice.org.np/wp-content/uploads/2024/04/modi-1.webp',
            ),
            Image.network(
              'https://www.aljazeera.com/wp-content/uploads/2025/10/2025-10-11T011935Z_792387164_RC2B9HAYWPEQ_RTRMADP_3_NORTHKOREA-ANNIVERSARY-1760159449.jpg?resize=770%2C513&quality=80',
            ),
            Image.network(
              'https://risingnepaldaily.com/storage/media/90648/OLi-KP.jpg',
            ),
            Image.network(
              'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/94d795777116652279c4de73ba19976639c12f5d-1920x1080.jpg',
            ),
            Image.network(
              'https://cdn.sanity.io/images/kbqq3e0r/production/8cab9a549a5bc09e4bcc391632d8640d495f4bd3-1200x667.png?w=3840&q=100',
            ),
            Image.network(
              'https://cdn.sanity.io/images/kbqq3e0r/production/8cab9a549a5bc09e4bcc391632d8640d495f4bd3-1200x667.png?w=3840&q=100',
            ),
          ],
        ),
      ),
    );
  }
}
