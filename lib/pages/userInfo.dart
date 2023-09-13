import 'package:flutter/material.dart';

void main() {
  runApp(UserInfo());
}

class UserInfo extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // 创建一个全局的FormState对象
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '表单示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('表单示例'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // 返回上级页面
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey, // 关联FormState对象
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: '姓名',
                  ),
                  controller: _unameController,
                  validator: (value) {
                    if (value == null ||value.isEmpty) {
                      return '请输入姓名';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _pwdController,
                  decoration: InputDecoration(
                    labelText: '邮箱',
                  ),
                  validator: (value) {
                    if (value == null ||value.isEmpty) {
                      return '请输入邮箱';
                    } else if (!value.contains('@')) {
                      return '请输入有效的邮箱地址';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    print(_unameController.text );
                    if (_formKey.currentState!.validate()) {
                      // 表单验证通过
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('提交表单')),
                      );
                    }
                  },
                  child: Text('提交'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}