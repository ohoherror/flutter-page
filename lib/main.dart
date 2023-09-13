import 'package:flutter/material.dart';
import 'package:untitled/pages/userInfo.dart';
import 'services/http_service.dart';
import 'package:bruno/bruno.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {"new_page": (context) => UserInfo()},
      home: Scaffold(
        appBar: AppBar(
          title: Text('我的活动'),
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.95),
        body: Stack(children: <Widget>[
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
                  width: 450,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20), // 设置背景颜色
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '地图世界的基本概念',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '本期专家:吴红樱',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        '本期专家:吴红樱',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                        textDirection: TextDirection.rtl,
                      ),
                      Text(
                        '本期专家:吴红樱',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                        textDirection: TextDirection.rtl,
                      ),
                      Text(
                        '本期专家:吴红樱',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  )),
            ],
          ),
          new ToUserInfo()
        ]),
      ),
    );
  }
}
//Navigator不能直接写在啊根目录下，需要重新定义新的类来包裹一遍
class ToUserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Column(
        children: [
          SizedBox(
            width: 350,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'new_page');
              },
              child: Text('点击我'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                // 设置按钮的背景颜色
              ),
            ),
          ),

          Text(
            '报名人数：04040',
            style:
                TextStyle(fontSize: 12, color: Color.fromRGBO(42, 54, 100, 1)),
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
      // 底部Widget,
      // width: 700,
      left: 30,
      bottom: 0,
    );
  }
}
