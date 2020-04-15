import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: Center
      (
        child: CachedNetworkImage
        (
          imageUrl: "https://dart.dev/assets/dash/2x/3-1%20-%20aot%20compile@2x-80.jpg",
          progressIndicatorBuilder: (context, url, downloadProgress) =>CircularProgressIndicator(value: downloadProgress.progress),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}