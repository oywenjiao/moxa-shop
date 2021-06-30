import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moxa_shop/common/c_colors.dart';
import 'package:moxa_shop/widgets/c_app_bar.dart';
import 'package:moxa_shop/widgets/c_text.dart';

void main() {
  runApp(MyApp());
  //沉浸式
  SystemUiOverlayStyle style = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.light,
  );
  SystemChrome.setSystemUIOverlayStyle(style);
  //强制竖屏
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // 关闭右上角debug角标
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.grey[50],  // 定义背景色
        primarySwatch: CColors.materialColor(Color(0xffFF9900)),  // 定义主题色
      ),
      home: MyHomePage(title: 'Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String searchKey = '';

  TextEditingController _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    print(169/205);
    return Scaffold(
      appBar: CAppBar(
        title: SizedBox(
          width: double.infinity,
          height: 32.0,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: CColors.materialColor(Color(0xffFF9900)), borderRadius: BorderRadius.circular(4)
                  ),
                  child: TextField(
                    controller: _controller,
                    onChanged: (t) {
                      setState(() {
                        searchKey = t;
                      });
                    },
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                        fontSize: 14,
                        color: CColors.black
                    ),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: CColors.materialColor(Color(0xff888888)),),
                        contentPadding: EdgeInsets.all(0),
                        hintText: "Recherche de priduits，maerques...",
                        hintStyle: TextStyle(
                            color: CColors.grey,
                            fontSize: 14
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      suffixIcon: searchKey.length > 0 ? IconButton(
                        onPressed: () {
                          setState(() {
                            searchKey = '';
                          });
                          _controller.clear();
                        },
                        icon: Icon(Icons.cancel, color: CColors.materialColor(Color(0xff888888))),
                      ) : null
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: <Widget>[
            Container(
              height: 86.0,
              margin: EdgeInsets.only(top: 10.0, left: 12.0, right: 12.0,),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/home-menu-icon1.png", width: 46.0, height: 46.0,),
                        Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: CText("Discount", fontSize: 11.0, color: Color(0xff555555),),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/home-menu-icon2.png", width: 46.0, height: 46.0,),
                        Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: CText("Hot sale", fontSize: 11.0, color: Color(0xff555555),),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/home-menu-icon3.png", width: 46.0, height: 46.0,),
                        Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: CText("NEW", fontSize: 11.0, color: Color(0xff555555),),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/home-menu-icon4.png", width: 46.0, height: 46.0,),
                        Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: CText("Spot goods", fontSize: 11.0, color: Color(0xff555555),),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0,),
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0,),
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CText("RECOMMEND", fontSize: 15.0, color: Color(0xff555555),),
                      Row(
                        children: [
                          CText("more", fontSize: 13.0, color: Color(0xff888888),),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 22.0,),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        //纵轴间距
                        mainAxisSpacing: 2,
                        //横轴间距
                        crossAxisSpacing: 13.0,
                        //子组件宽高长度比例
                        childAspectRatio: 169/218,
                      ),
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () async{
                              print('路由跳转');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("images/product.png", width: 169.0, height: 156.0,),
                                Padding(
                                  padding: EdgeInsets.only(top: 4.0),
                                  child: CText(
                                    "Music pioneer B5 TWS Mini Music pioneer B5 TWS Mini ",
                                    fontSize: 12.0,
                                    color: Color(0xff555555),
                                    maxLines: 1,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                  child: CText('\$ 9,500', fontSize: 17.0, color: Color(0xffFF9900),),
                                ),
                              ],
                            )
                          ),
                        );
                      }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
