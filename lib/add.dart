import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'list.dart';
//import 'Storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() {
    // TODO: implement createState
    return new _AddPageState();
  }
}

class _AddPageState extends State<AddPage> {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  //String _name;
  //String _surname;
  TextEditingController _controller1;
  //TextEditingController _controller2;
  TextEditingController text1 = new TextEditingController();
  TextEditingController text2 = new TextEditingController();
  TextEditingController text3 = new TextEditingController();
  TextEditingController text4 = new TextEditingController();
  TextEditingController text5 = new TextEditingController();
  TextEditingController text6 = new TextEditingController();
  TextEditingController text7 = new TextEditingController();
  TextEditingController text8 = new TextEditingController();
  TextEditingController text9 = new TextEditingController();
  TextEditingController text10 = new TextEditingController();
  TextEditingController text11 = new TextEditingController();
  TextEditingController text12 = new TextEditingController();
  TextEditingController text13 = new TextEditingController();
  TextEditingController text14 = new TextEditingController();
  TextEditingController text15 = new TextEditingController();
  TextEditingController text16 = new TextEditingController();
  TextEditingController text17 = new TextEditingController();
  TextEditingController text18 = new TextEditingController();
  TextEditingController text19 = new TextEditingController();
  TextEditingController text20 = new TextEditingController();
  TextEditingController text21 = new TextEditingController();
  TextEditingController text22 = new TextEditingController();
  TextEditingController text23 = new TextEditingController();
  TextEditingController text24 = new TextEditingController();
  TextEditingController text25 = new TextEditingController();
  TextEditingController text26 = new TextEditingController();
  TextEditingController text27 = new TextEditingController();
  TextEditingController text28 = new TextEditingController();
  TextEditingController text29 = new TextEditingController();
  TextEditingController text30 = new TextEditingController();
  TextEditingController text31 = new TextEditingController();
  TextEditingController text32 = new TextEditingController();
  TextEditingController text33 = new TextEditingController();
  TextEditingController text34 = new TextEditingController();
  TextEditingController text35 = new TextEditingController();
  TextEditingController text36 = new TextEditingController();
  TextEditingController text37 = new TextEditingController();
  TextEditingController text38 = new TextEditingController();
  TextEditingController text39 = new TextEditingController();
  int flag1=1;
  int flag2=1;
  int flag3=1;
  int flag4=1;
  int flag5=1;
  int flag6=1;
  int flag7=1;
  int flag8=1;
  int flag9=1;
  int flag10=1;

  @override
  void initState() {
    
    super.initState();
    _loadCounter();
    
    //return "aaa";
    //_controller2 = new TextEditingController(text: testobj.sname);
  }
  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      String username = prefs.getString("userInfo");
      //print("aaa======="+aa);
      _controller1 = new TextEditingController(text:  username);
    });
  }
showAlertDialog(BuildContext context,bool flag) {
 
  //设置按钮
  if(flag == true){
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { 
       Navigator.of(context).pushAndRemoveUntil(
                          new MaterialPageRoute(
                              builder: (context) => new PageTwo()),
                              (route) => route == null);
    },
  );
 
  //设置对话框
  AlertDialog alert = AlertDialog(
    title: Text(""),
    content: Text("提交成功"),
    actions: [
      okButton,
    ],
  );
 
  //显示对话框
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
} else {
Widget okButton = FlatButton(
    child: Text("返回"),
    onPressed: () { 
       Navigator.of(context).pop();

       Navigator.of(context).pop();
    },
  );
 
  //设置对话框
  AlertDialog alert = AlertDialog(
    title: Text(""),
    content: Text("提交失败"),
    actions: [
      okButton,
    ],
  );
 
  //显示对话框
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );

}
}

showAlertDialog1(BuildContext context) {
 
  //设置按钮
  Widget cancelButton = FlatButton(
    child: Text("取消"),
    onPressed:  () {Navigator.of(context).pop();},
  );
  Widget continueButton = FlatButton(
    child: Text("确认"),
    onPressed:  ()async {
          final form = _formKey.currentState;
          if(form.validate()) {
            form.save();
            var newsURL = 'http://10.0.2.2:5000/insertInfo?owner='+ _controller1.text +'&ups1=' + text1.text + ','+text2.text +'&ups2=' + text3.text + ','+text4.text +'&ups3=' + text5.text + ','+text6.text +'&ups4=' + text7.text + ','+text8.text +'&aircondition1=' + text9.text + ','+text10.text +'&aircondition2=' + text11.text + ','+text12.text +'&aircondition3=' + text13.text + ','+text14.text +'&aircondition4=' + text15.text + ','+text16.text +'&jgcj=' + text17.text + ','+text18.text +'&aircondition5=' + text19.text + ','+text20.text +'&aircondition6=' + text21.text + ','+text22.text +'&aircondition7=' + text23.text + ','+text24.text +'&aircondition8=' + text25.text + ','+text26.text +'&aircondition9=' + text27.text + ','+text28.text +'&aircondition10=' + text29.text + ','+text30.text  +'&zjgcj1=' + text31.text + ','+text32.text  +'&zjgcj2=' + text33.text + ','+text34.text  +'&zjgcj3=' + text35.text + ','+text36.text  +'&zjgcj4=' + text37.text + ','+text38.text  +'&comment=' + text39.text  + '&gpyl=' + this.flag1.toString() + '&jkzhwg=' + this.flag2.toString() + '&xfmkg=' + this.flag3.toString()+ '&xfzsd=' + this.flag4.toString()+ '&xfss=' + this.flag5.toString()+ '&stmhq=' + this.flag6.toString()+ '&zyyqhxq=' + this.flag7.toString()+ '&zjyyxqk=' + this.flag8.toString()+ '&zjeyxqk=' + this.flag9.toString()+ '&observ=' + this.flag10.toString() ;
            
            var response = await http.get(newsURL);
            print(json.decode(response.body));
            if(json.decode(response.body)==true)
            { 
            showAlertDialog(context,true);
           
          }else 
          {showAlertDialog(context,false);}
        } },
  );
 
  //设置对话框
  AlertDialog alert = AlertDialog(
    title: Text(""),
    content: Text("是否确定提交"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );
 
  //显示对话框
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

 
 int sex = 1;

  @override
  Widget build(BuildContext context) {
    //var username = await Storage.getString("userInfo");
    //print('username===='+ getUsername().toString() );
    return Scaffold (
      appBar: AppBar(
        title:Text("新建巡检单"),
      ),
      
      body:new SingleChildScrollView(child: Center( 
    //padding: EdgeInsets.all(20),
    
    child: Form (
      key: _formKey,//绑定状态属性
      child: Column (
	children: <Widget>[
    
     Row(
       
 children: <Widget>[
          Text(
            '填报人',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: _controller1,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),                
              ],
            ),
          )
        ],

     ),
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'UPS室 UPS1',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text1,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  'V',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text2,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  'V',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),

Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '配电室1 UPS2',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text3,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  'V',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text4,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  'V',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),

Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '配电室2 UPS3',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text5,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  'V',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text6,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  'V',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '配电室3 UPS4',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text7,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  'V',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text8,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  'V',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '配电室4 空调1',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text9,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '℃',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text10,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '%',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),

Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '配电室5 空调2',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text11,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '℃',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text12,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '%',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),

    Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
          Text(
            '钢瓶压力表检查情况',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
          
          //在这里也套了个Expanded
          Expanded(
           
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("正常"),
              Radio(
                value: 1,
                groupValue: this.flag1,
                onChanged: (value) {
                  setState(() {
                    this.flag1 = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.flag1,
                onChanged: (value) {
                  setState(() {
                    this.flag1 = value;
                  });
                },
              )
            ],
           ))] ),
    Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
          Text(
            '监控主机外观',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
          
          //在这里也套了个Expanded
          Expanded(
           
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("正常"),
              Radio(
                value: 1,
                groupValue: this.flag2,
                onChanged: (value) {
                  setState(() {
                    this.flag2 = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.flag2,
                onChanged: (value) {
                  setState(() {
                    this.flag2 = value;
                  });
                },
              )
            ],
           ))] ),
    Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
          Text(
            '消防门开关',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
          
          //在这里也套了个Expanded
          Expanded(
           
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("正常"),
              Radio(
                value: 1,
                groupValue: this.flag3,
                onChanged: (value) {
                  setState(() {
                    this.flag3 = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.flag3,
                onChanged: (value) {
                  setState(() {
                    this.flag3 = value;
                  });
                },
              )
            ],
           ))] ),
    Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
          Text(
            '消防指示灯',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
          
          //在这里也套了个Expanded
          Expanded(
           
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("正常"),
              Radio(
                value: 1,
                groupValue: this.flag4,
                onChanged: (value) {
                  setState(() {
                    this.flag4 = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.flag4,
                onChanged: (value) {
                  setState(() {
                    this.flag4 = value;
                  });
                },
              )
            ],
           ))] ),
    Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
          Text(
            '消防通道 消防设施',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
          
          //在这里也套了个Expanded
          Expanded(
           
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("正常"),
              Radio(
                value: 1,
                groupValue: this.flag5,
                onChanged: (value) {
                  setState(() {
                    this.flag5 = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.flag5,
                onChanged: (value) {
                  setState(() {
                    this.flag5 = value;
                  });
                },
              )
            ],
           ))] ),
    Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
          Text(
            '手提式灭火器',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
          
          //在这里也套了个Expanded
          Expanded(
           
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("正常"),
              Radio(
                value: 1,
                groupValue: this.flag6,
                onChanged: (value) {
                  setState(() {
                    this.flag6 = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.flag6,
                onChanged: (value) {
                  setState(() {
                    this.flag6 = value;
                  });
                },
              )
            ],
           ))] ),
    Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
          Text(
            '专用氧气呼吸器',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
          
          //在这里也套了个Expanded
          Expanded(
           
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("正常"),
              Radio(
                value: 1,
                groupValue: this.flag7,
                onChanged: (value) {
                  setState(() {
                    this.flag7 = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.flag7,
                onChanged: (value) {
                  setState(() {
                    this.flag7 = value;
                  });
                },
              )
            ],
           ))] ),
    Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
          Text(
            '主机一运行情况',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
          
          //在这里也套了个Expanded
          Expanded(
           
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("正常"),
              Radio(
                value: 1,
                groupValue: this.flag8,
                onChanged: (value) {
                  setState(() {
                    this.flag8 = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.flag8,
                onChanged: (value) {
                  setState(() {
                    this.flag8 = value;
                  });
                },
              )
            ],
           ))] ),
    Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
          Text(
            '主机二运行情况',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
          
          //在这里也套了个Expanded
          Expanded(
           
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("正常"),
              Radio(
                value: 1,
                groupValue: this.flag9,
                onChanged: (value) {
                  setState(() {
                    this.flag9 = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.flag9,
                onChanged: (value) {
                  setState(() {
                    this.flag9 = value;
                  });
                },
              )
            ],
           ))] ),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '电信接入间1空调3',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text13,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '℃',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text14,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '%',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '电信接入间2空调4',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text15,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '℃',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text16,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '%',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '电信接入间3机柜采集',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text17,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '℃',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text18,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '%',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '主机房2 空调5',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text19,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '℃',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text20,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '%',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),

Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '主机房3 空调6',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text21,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '℃',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text22,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '%',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '主机房4 空调7',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text23,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '℃',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text24,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '%',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),

Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '主机房5 空调8',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text25,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '℃',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text26,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '%',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),

Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '主机房6 空调9',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text27,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '℃',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text28,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '%',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '主机房7 空调10',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text29,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '℃',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text30,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '%',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '主机房机柜采集',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text31,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '℃',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text32,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '%',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),

Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '主机房机柜采集',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text33,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '℃',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text34,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '%',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),

        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '主机房机柜采集',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text35,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '℃',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text36,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '%',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),

        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '主机房机柜采集',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text37,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '℃',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                ),
                Expanded(
                  child: TextField(
                    textAlign:TextAlign.right ,
                    controller: text38,  //数字键盘
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '',
                      border: InputBorder.none
                    ),
                  ),
                ),
                Text(
                  '%',
                  style:TextStyle(
                    //fontSize: ScreenUtil().setSp(28),
                    color: Color(0xFF666666),
                  )
                )
                
              ],
            ),
          )
        ],),

    Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
          Text(
            '主机房12 观察窗',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
          
          //在这里也套了个Expanded
          Expanded(
           
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("无积水"),
              Radio(
                value: 1,
                groupValue: this.flag10,
                onChanged: (value) {
                  setState(() {
                    this.flag10 = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("有积水"),
              Radio(
                value: 2,
                groupValue: this.flag10,
                onChanged: (value) {
                  setState(() {
                    this.flag10 = value;
                  });
                },
              )
            ],
           ))] ),   

    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '综合结论和问题记录',
            style:TextStyle(
              //fontSize: ScreenUtil().setSp(30)
            ),
          ),
           
          //在这里也套了个Expanded
         
        ],),        
     Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
         
           
          //在这里也套了个Expanded
          Expanded(
            child: Row(
              children: <Widget>[
              	//在这里套了个Expanded
                Expanded(
                  child: TextField(
                  controller: text39,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  autofocus: true,
                  decoration: InputDecoration.collapsed(
                    hintText: "备注",
                  ),
                ),
                ),
                
                
              ],
            ),
          )
        ],),

	  // TextFormField(
	  //   onSaved: (val) {
	  //     _surname = val;
	  //   },
	  //   decoration: InputDecoration(labelText: '配电室1 UPS2',),
	  // ),
	
	 // Text('',style: TextStyle(height: 2,),),
	  //Text('$_name'),
	  //Text('$_surname'),
    new MaterialButton(child: new Text('提交', style: const TextStyle(color: Colors.white),),
      onPressed:()  {
          showAlertDialog1(context); }, 
        color: Theme.of(context).primaryColor,)

    
	],
      ),
    ),
  ),
    ));
  }
}