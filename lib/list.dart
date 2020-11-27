import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'model.dart';
import 'modify.dart';
import 'add.dart';
import 'login.dart';
import 'Storage.dart';

class PageTwo extends StatefulWidget {
   @override
  _PageTwoState createState() => _PageTwoState();
}
class _PageTwoState extends State<PageTwo>{
  @override
  void initState() {
    super.initState();
    _loadData();
  }
  var _tests = <Xunjian>[];
    _loadData() async {
    var dataURL = 'http://10.0.2.2:5000/getDataInfo';
    var response = await http.get(dataURL);
    
    setState(() {
      final data = json.decode(response.body);
      print(data);

       for (var test in data) {
         final s = Xunjian(test[0], test[1],test[2]);
         _tests.add(s);
       }
       print(_tests);
    });
  }

Widget buildGrid() {
        List<Widget> tiles = [];//先建一个数组用于存放循环生成的widget
        Widget content; //单独一个widget组件，用于返回需要生成的内容widget
         tiles.add(
              new Row(
                children: <Widget>[
                  Expanded(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(5.0),
        alignment: Alignment.center,  
                  child:new Text("执行人", 
                  strutStyle: StrutStyle(forceStrutHeight: true, height: 2, leading: 0.9),
                  style: new TextStyle(
                  fontSize: 19,
                  
                ),),
      ),
      flex: 1,
    ),
Expanded(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(5.0),
        alignment: Alignment.center,
                  child:new Text("录入时间", 
                  strutStyle: StrutStyle(forceStrutHeight: true, height: 2, leading: 0.9),
                  style: new TextStyle(
                  fontSize: 19,
                  
                ),),
                
                
      ),
      flex: 2,
    ),

               
                ]
              )
            );
        for(var item in _tests) {
            tiles.add(
              new Row(
                children: <Widget>[

Expanded(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(5.0),
        alignment: Alignment.center,
                  child: GestureDetector(child:new Text(item.owner, 
                  strutStyle: StrutStyle(forceStrutHeight: true, height: 2, leading: 0.9),
                  style: new TextStyle(
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dotted
                ),),onTap: () async{
                      //在这里不能通过此方式获取FormState，context不对
                      //print(Form.of(context));
                      // 通过_formKey.currentState 获取FormState后，
                      // 调用validate()方法校验用户名密码是否合法，校验
                      // 通过后再提交数据。
                      
                        //print(_name);
                       // print(_password);
                        var newsURL = 'http://10.0.2.2:5000/getDataOneInfo?id=' + item.id.toString();
                        print(newsURL);
                        var response = await http.get(newsURL);
                        //response = await http.get(newsURL);
                        //Map<String, dynamic> data = json.decode(response.body);
  
                        
                        final data = json.decode(response.body);
                        var object = Xunjiandtl(data[0], data[1],data[2],data[3], data[4],data[5],data[6], data[7],data[8],data[9], data[10],data[11],data[12], data[13],data[14],data[15], data[16],data[17],data[18], data[19],data[20],data[21], data[22],data[23],data[24], data[25],data[26],data[27], data[28],data[29],data[30], data[31]);
                        print(object);
                        Navigator.of(context).pushAndRemoveUntil(
                          new MaterialPageRoute(
                              builder: (context) => new ModifyPage(object)),
                              (route) => route == null);
                      return true;
                        //验证通过提交数据
                      
                    },)
      ),
      flex: 1,
    ),
Expanded(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(5.0),
        alignment: Alignment.center,
                  child:new Text(item.opertime, 
                  strutStyle: StrutStyle(forceStrutHeight: true, height: 2, leading: 0.9),
                  style: new TextStyle(
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dotted
                ),),
      ),
      flex: 2,
    ),


               
                ]
              )
            );
        }
        content = new Column(
            children: tiles //重点在这里，因为用编辑器写Column生成的children后面会跟一个<Widget>[]，
            //此时如果我们直接把生成的tiles放在<Widget>[]中是会报一个类型不匹配的错误，把<Widget>[]删了就可以了
        );
        return content;
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("巡检单列表"),
        actions: <Widget>[
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () => 
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                Storage.remove("userInfo");
                                return new LoginAlertDemoApp();//返回登录页面
                              })),
                              
            ),
           
          ],
      ),
      body: new SingleChildScrollView(child: Center(
        child: buildGrid(),
      )),floatingActionButton: FloatingActionButton(
                              
                              child: new Text('新增'),
                              
                              onPressed: () => 
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                return new AddPage();//要跳转的页面
                              })),
),
    );
  }
}