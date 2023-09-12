import 'package:flutter/material.dart';
import 'services/http_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('我的活动'),
          ),
          backgroundColor: Colors.white70,
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(

                  children: <Widget>[
                    Column(
                      children: [
                        Image.network(
                          'https://img1.baidu.com/it/u=212786260,2499223000&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', // 替换为您希望展示的网络图片的URL
                          width: 750,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                        Container(
                            color: Colors.white,
                            width:450,
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(20),// 设置背景颜色
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '地图世界的基本概念',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  '本期专家:吴红樱',
                                  style: TextStyle(fontSize: 16,color:Colors.grey),
                                ),
                                Text(
                                  '本期专家:吴红樱',
                                  style: TextStyle(fontSize: 16,color:Colors.grey),
                                  textDirection: TextDirection.rtl,
                                ),
                                Text(
                                  '本期专家:吴红樱',
                                  style: TextStyle(fontSize: 16,color:Colors.grey),
                                  textDirection: TextDirection.rtl,
                                ),
                                Text(
                                  '本期专家:吴红樱',
                                  style: TextStyle(fontSize: 16,color:Colors.grey),
                                  textDirection: TextDirection.rtl,
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter, // 设置为底部居中对齐
                      child: Padding(
                        padding: EdgeInsets.all(16), // 设置边距
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('固定按钮'),
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: MediaQuery.of(context).padding.top), // 设置顶部留白

              ])),
    );
  }
}
