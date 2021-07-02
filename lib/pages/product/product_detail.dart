import 'package:flutter/material.dart';
import 'package:moxa_shop/common/c_colors.dart';
import 'package:moxa_shop/widgets/c_app_bar.dart';
import 'package:moxa_shop/widgets/c_text.dart';

class ProductDetailPage extends StatefulWidget {
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {

  String searchKey = '';

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
      body: Column(
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
        ],
      ),
    );
  }
}