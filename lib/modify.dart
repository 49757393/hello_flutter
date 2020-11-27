import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'list.dart';
import 'model.dart';


class ModifyPage extends StatefulWidget {
  Xunjiandtl obj;
  ModifyPage(this.obj);
  @override
  _ModifyPageState createState() {
    // TODO: implement createState
    
    return new _ModifyPageState(obj);
  }
}

class _ModifyPageState extends State<ModifyPage> {

  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  
  Xunjiandtl obj;
  _ModifyPageState(this.obj);
  TextEditingController ups1;
  TextEditingController ups1_1;
  TextEditingController ups1_2;  
  TextEditingController ups2;
  TextEditingController ups2_1;
  TextEditingController ups2_2;  
  TextEditingController ups3;
  TextEditingController ups3_1;
  TextEditingController ups3_2;  
  TextEditingController ups4;
  TextEditingController ups4_1;
  TextEditingController ups4_2;  
  TextEditingController air1;  
  TextEditingController air1_1;
  TextEditingController air1_2;  
  TextEditingController air2;
  TextEditingController air2_1;
  TextEditingController air2_2;  
  TextEditingController air3;
  TextEditingController air3_1;
  TextEditingController air3_2;  
  TextEditingController air4;
  TextEditingController air4_1;
  TextEditingController air4_2;  
  TextEditingController air5;
  TextEditingController air5_1;
  TextEditingController air5_2;  
  TextEditingController air6;
  TextEditingController air6_1;
  TextEditingController air6_2;  
  TextEditingController air7;
  TextEditingController air7_1;
  TextEditingController air7_2;  
  TextEditingController air8;
  TextEditingController air8_1;
  TextEditingController air8_2;  
  TextEditingController air9;
  TextEditingController air9_1;
  TextEditingController air9_2;  
  TextEditingController air10;
  TextEditingController air10_1;
  TextEditingController air10_2;  
  TextEditingController jgcj;
  TextEditingController jgcj_1;
  TextEditingController jgcj_2;
  TextEditingController zjgcj1;
  TextEditingController zjgcj1_1;
  TextEditingController zjgcj1_2;
  TextEditingController zjgcj2;
  TextEditingController zjgcj2_1;
  TextEditingController zjgcj2_2;  
  TextEditingController zjgcj3;
  TextEditingController zjgcj3_1;
  TextEditingController zjgcj3_2;  
  TextEditingController zjgcj4;
  TextEditingController zjgcj4_1;
  TextEditingController zjgcj4_2;
  TextEditingController comment;
       
  //TextEditingController _controller2;

  String text2;
  String text1;
  int gpyl;
  int jkzhwg;
  int xfmkg;
  int xfzsd;
  int xfss;
  int stmhq;
  int zyyqhxq;
  int zjyyxqk;
  int zjeyxqk;
  int observ;

  @override
  void initState() {
    super.initState();
    ups1 = new TextEditingController(text: obj.ups1);
    ups2 = new TextEditingController(text: obj.ups2);
    ups3 = new TextEditingController(text: obj.ups3);
    ups4 = new TextEditingController(text: obj.ups4);
    air1 = new TextEditingController(text: obj.aircondition1);
    air2 = new TextEditingController(text: obj.aircondition2);
    air3 = new TextEditingController(text: obj.aircondition3);
    air4 = new TextEditingController(text: obj.aircondition4);
    air5 = new TextEditingController(text: obj.aircondition5);
    air6 = new TextEditingController(text: obj.aircondition6);
    air7 = new TextEditingController(text: obj.aircondition7);
    air8 = new TextEditingController(text: obj.aircondition8);
    air9 = new TextEditingController(text: obj.aircondition9);
    air10 = new TextEditingController(text: obj.aircondition10);
    jgcj = new TextEditingController(text: obj.jgcj);
    zjgcj1 = new TextEditingController(text: obj.zjgcj1);
    zjgcj2 = new TextEditingController(text: obj.zjgcj2);
    zjgcj3 = new TextEditingController(text: obj.zjgcj3);
    zjgcj4 = new TextEditingController(text: obj.zjgcj4);
    comment = new TextEditingController(text: obj.comment);
    gpyl  = obj.gpyl;
    jkzhwg  = obj.jkzhwg;
    xfmkg  = obj.xfmkg;
    xfzsd  = obj.xfzsd;
    xfss  = obj.xfss;
    stmhq  = obj.stmhq;
    zyyqhxq  = obj.zyyqhxq;
    zjyyxqk  = obj.zjyyxqk;
    zjeyxqk  = obj.zjeyxqk;
    observ  = obj.observ;

    //print(_controller1.text.toString());
    //print(_controller1.text);    
     text1 = ups1.text.toString().split(",")[0];
     text2 = ups1.text.toString().split(",")[1];
     ups1_1 =  new TextEditingController(text:text1);
     ups1_2 = new TextEditingController(text:text2);

     text1 = ups2.text.toString().split(",")[0];
     text2 = ups2.text.toString().split(",")[1];
     ups2_1 =  new TextEditingController(text:text1);
     ups2_2 = new TextEditingController(text:text2);

     text1 = ups3.text.toString().split(",")[0];
     text2 = ups3.text.toString().split(",")[1];
     ups3_1 =  new TextEditingController(text:text1);
     ups3_2 = new TextEditingController(text:text2);

     text1 = ups4.text.toString().split(",")[0];
     text2 = ups4.text.toString().split(",")[1];
     ups4_1 =  new TextEditingController(text:text1);
     ups4_2 = new TextEditingController(text:text2);

     text1 = air1.text.toString().split(",")[0];
     text2 = air1.text.toString().split(",")[1];
     air1_1 =  new TextEditingController(text:text1);
     air1_2 = new TextEditingController(text:text2);  

     text1 = air2.text.toString().split(",")[0];
     text2 = air2.text.toString().split(",")[1];
     air2_1 =  new TextEditingController(text:text1);
     air2_2 = new TextEditingController(text:text2);  

     text1 = air3.text.toString().split(",")[0];
     text2 = air3.text.toString().split(",")[1];
     air3_1 =  new TextEditingController(text:text1);
     air3_2 = new TextEditingController(text:text2);  

     text1 = air4.text.toString().split(",")[0];
     text2 = air4.text.toString().split(",")[1];
     air4_1 =  new TextEditingController(text:text1);
     air4_2 = new TextEditingController(text:text2);  

     text1 = air5.text.toString().split(",")[0];
     text2 = air5.text.toString().split(",")[1];
     air5_1 =  new TextEditingController(text:text1);
     air5_2 = new TextEditingController(text:text2);  

     text1 = air6.text.toString().split(",")[0];
     text2 = air6.text.toString().split(",")[1];
     air6_1 =  new TextEditingController(text:text1);
     air6_2 = new TextEditingController(text:text2);  

     text1 = air7.text.toString().split(",")[0];
     text2 = air7.text.toString().split(",")[1];
     air7_1 =  new TextEditingController(text:text1);
     air7_2 = new TextEditingController(text:text2);  

     text1 = air8.text.toString().split(",")[0];
     text2 = air8.text.toString().split(",")[1];
     air8_1 =  new TextEditingController(text:text1);
     air8_2 = new TextEditingController(text:text2);  

     text1 = air9.text.toString().split(",")[0];
     text2 = air9.text.toString().split(",")[1];
     air9_1 =  new TextEditingController(text:text1);
     air9_2 = new TextEditingController(text:text2);  

     text1 = air10.text.toString().split(",")[0];
     text2 = air10.text.toString().split(",")[1];
     air10_1 =  new TextEditingController(text:text1);
     air10_2 = new TextEditingController(text:text2);  

     text1 = zjgcj1.text.toString().split(",")[0];
     text2 = zjgcj1.text.toString().split(",")[1];
     zjgcj1_1 =  new TextEditingController(text:text1);
     zjgcj1_2 = new TextEditingController(text:text2);  

     text1 = zjgcj2.text.toString().split(",")[0];
     text2 = zjgcj2.text.toString().split(",")[1];
     zjgcj2_1 =  new TextEditingController(text:text1);
     zjgcj2_2 = new TextEditingController(text:text2);  

     text1 = zjgcj3.text.toString().split(",")[0];
     text2 = zjgcj3.text.toString().split(",")[1];
     zjgcj3_1 =  new TextEditingController(text:text1);
     zjgcj3_2 = new TextEditingController(text:text2);  

     text1 = zjgcj4.text.toString().split(",")[0];
     text2 = zjgcj4.text.toString().split(",")[1];
     zjgcj4_1 =  new TextEditingController(text:text1);
     zjgcj4_2 = new TextEditingController(text:text2);  

     text1 = air1.text.toString().split(",")[0];
     text2 = air1.text.toString().split(",")[1];
     air1_1 =  new TextEditingController(text:text1);
     air1_2 = new TextEditingController(text:text2);  

     text1 = jgcj.text.toString().split(",")[0];
     text2 = jgcj.text.toString().split(",")[1];
     jgcj_1 =  new TextEditingController(text:text1);
     jgcj_2 = new TextEditingController(text:text2);      

     print(text1);
     print(text2);
     
     //print("_controller1.=====",_controller1.toString());
     //text2 = _controller1.toString().split(",")[1];
    //_controller2 = new TextEditingController(text: testobj.sname);
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

showAlertDialog2(BuildContext context) {
 
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
            var newsURL = 'http://10.0.2.2:5000/delInfo?id=' + obj.id.toString() ;
            
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
    content: Text("是否确定"),
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

showAlertDialog3(BuildContext context) {
 
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
            var newsURL = 'http://10.0.2.2:5000/modifyInfo?id=' + obj.id.toString() + '&ups1=' + ups1_1.text + ','+ups1_2.text +'&ups2=' + ups2_1.text + ','+ ups2_2.text +'&ups3=' + ups3_1.text + ','+ ups3_2.text +'&ups4=' + ups4_1.text + ','+ ups4_2.text +'&aircondition1=' + air1_1.text + ','+ air1_2.text +'&aircondition2=' + air2_1.text + ','+ air2_2.text +'&aircondition3=' + air3_1.text + ','+ air3_2.text +'&aircondition4=' + air4_1.text + ','+ air4_2.text +'&jgcj=' + jgcj_1.text + ','+ jgcj_2.text +'&aircondition5=' + air5_1.text + ','+ air5_2.text +'&aircondition6=' + air6_1.text + ','+ air6_2.text +'&aircondition7=' + air7_1.text + ','+ air7_2.text +'&aircondition8=' + air8_1.text + ','+ air8_2.text +'&aircondition9=' + air9_1.text + ','+ air9_2.text +'&aircondition10=' + air10_1.text + ','+ air10_2.text  +'&zjgcj1=' + zjgcj1_1.text + ','+ zjgcj1_2.text  +'&zjgcj2=' + zjgcj2_1.text + ','+ zjgcj2_2.text  +'&zjgcj3=' + zjgcj3_1.text + ','+ zjgcj3_2.text  +'&zjgcj4=' + zjgcj4_1.text + ','+ zjgcj4_2.text  +'&comment=' + comment.text  + '&gpyl=' + gpyl.toString() + '&jkzhwg=' + jkzhwg.toString() + '&xfmkg=' + xfmkg.toString()+ '&xfzsd=' + xfzsd.toString()+ '&xfss=' + xfss.toString()+ '&stmhq=' + stmhq.toString()+ '&zyyqhxq=' + zyyqhxq.toString()+ '&zjyyxqk=' + zjyyxqk.toString()+ '&zjeyxqk=' + zjeyxqk.toString()+ '&observ=' + observ.toString() ;
            
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
    content: Text("是否确定"),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("操作巡检单"),
      ),
      body:new SingleChildScrollView(child: Center( 
   // padding: EdgeInsets.all(20),
    child: Form(
      key: _formKey,//绑定状态属性
      child: Column(
	children: <Widget>[
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
                    controller: ups1_1,  //数字键盘
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
                    controller: ups1_2,  //数字键盘
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
                    controller: ups2_1,  //数字键盘
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
                    controller: ups2_2,  //数字键盘
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
                    controller: ups3_1,  //数字键盘
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
                    controller: ups3_2,  //数字键盘
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
                    controller: ups4_1,  //数字键盘
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
                    controller: ups4_2,  //数字键盘
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
                    controller: air1_1,  //数字键盘
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
                    controller: air1_2,  //数字键盘
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
                    controller: air2_1,  //数字键盘
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
                    controller: air2_2,  //数字键盘
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
                groupValue: this.gpyl,
                onChanged: (value) {
                  setState(() {
                    this.gpyl = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.gpyl,
                onChanged: (value) {
                  setState(() {
                    this.gpyl = value;
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
                groupValue: this.jkzhwg,
                onChanged: (value) {
                  setState(() {
                    this.jkzhwg = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.jkzhwg,
                onChanged: (value) {
                  setState(() {
                    this.jkzhwg = value;
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
                groupValue: this.xfmkg,
                onChanged: (value) {
                  setState(() {
                    this.xfmkg = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.xfmkg,
                onChanged: (value) {
                  setState(() {
                    this.xfmkg = value;
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
                groupValue: this.xfzsd,
                onChanged: (value) {
                  setState(() {
                    this.xfzsd = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.xfzsd,
                onChanged: (value) {
                  setState(() {
                    this.xfzsd = value;
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
                groupValue: this.xfss,
                onChanged: (value) {
                  setState(() {
                    this.xfss = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.xfss,
                onChanged: (value) {
                  setState(() {
                    this.xfss = value;
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
                groupValue: this.stmhq,
                onChanged: (value) {
                  setState(() {
                    this.stmhq = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.stmhq,
                onChanged: (value) {
                  setState(() {
                    this.stmhq = value;
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
                groupValue: this.zyyqhxq,
                onChanged: (value) {
                  setState(() {
                    this.zyyqhxq = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.zyyqhxq,
                onChanged: (value) {
                  setState(() {
                    this.zyyqhxq = value;
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
                groupValue: this.zjyyxqk,
                onChanged: (value) {
                  setState(() {
                    this.zjyyxqk = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.zjyyxqk,
                onChanged: (value) {
                  setState(() {
                    this.zjyyxqk = value;
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
                groupValue: this.zjeyxqk,
                onChanged: (value) {
                  setState(() {
                    this.zjeyxqk = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("不正常"),
              Radio(
                value: 2,
                groupValue: this.zjeyxqk,
                onChanged: (value) {
                  setState(() {
                    this.zjeyxqk = value;
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
                    controller: air3_1,  //数字键盘
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
                    controller: air3_2,  //数字键盘
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
                    controller: air4_1,  //数字键盘
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
                    controller: air4_2,  //数字键盘
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
                    controller: jgcj_1,  //数字键盘
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
                    controller: jgcj_2,  //数字键盘
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
                    controller: air5_1,  //数字键盘
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
                    controller: air5_2,  //数字键盘
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
                    controller: air6_1,  //数字键盘
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
                    controller: air6_2,  //数字键盘
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
                    controller: air7_1,  //数字键盘
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
                    controller: air7_2,  //数字键盘
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
                    controller: air8_1,  //数字键盘
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
                    controller: air8_2,  //数字键盘
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
                    controller: air9_1,  //数字键盘
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
                    controller: air9_2,  //数字键盘
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
                    controller: air10_1,  //数字键盘
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
                    controller: air10_2,  //数字键盘
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
                    controller: zjgcj1_1,  //数字键盘
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
                    controller: zjgcj1_2,  //数字键盘
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
                    controller: zjgcj2_1,  //数字键盘
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
                    controller: zjgcj2_2,  //数字键盘
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
                    controller: zjgcj3_1,  //数字键盘
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
                    controller: zjgcj3_2,  //数字键盘
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
                    controller: zjgcj4_1,  //数字键盘
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
                    controller: zjgcj4_2,  //数字键盘
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
                groupValue: this.observ,
                onChanged: (value) {
                  setState(() {
                    this.observ = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("有积水"),
              Radio(
                value: 2,
                groupValue: this.observ,
                onChanged: (value) {
                  setState(() {
                    this.observ = value;
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
                  controller: comment,
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
	 // Text('',style: TextStyle(height: 2,),),
	  //Text('$_name'),
	  //Text('$_surname'),
    Row(
      children:<Widget> [
     MaterialButton(child: new Text('修改', style: const TextStyle(color: Colors.white),),minWidth:30,
      onPressed:()  {
          showAlertDialog3(context); }, 
        color: Theme.of(context).primaryColor,),
  SizedBox(width: 50),
    MaterialButton(child: new Text('删除', style: const TextStyle(color: Colors.white),),minWidth:30,
      onPressed:()  {
          showAlertDialog2(context); }, 
        color: Theme.of(context).primaryColor,),
      SizedBox(width: 50),  
     MaterialButton(child: new Text('取消', style: const TextStyle(color: Colors.white),),minWidth:30,
      onPressed:() { 
       Navigator.of(context).pushAndRemoveUntil(
                          new MaterialPageRoute(
                              builder: (context) => new PageTwo()),
                              (route) => route == null);
    }, 
        color: Theme.of(context).primaryColor,)
    ])
    
	],
      ),
    ),
  ),)
    );
  }
}