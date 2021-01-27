# az_grident_button

渐变色按钮，发布Pub练习

## 1、发布步骤：

    flutter create --template=package az_grident_button
    cd az_grident_button
    flutter create example

完成代码编写后，在example中使用库

在example/pubspec.yaml
    添加：
    xxx:
        path: ../
在example/lib/main.dart中导入:
    import 'package:az_grident_button/az_grident_button.dart';
书写使用库的例子；

## 2、准备发布：
    flutter packages pub publish --dry-run
    flutter packages pub publish --server=https://pub.dartlang.org

会出现如下提示：

    Do you want to publish az_grident_button 0.0.1 (y/N)? y
    Pub needs your authorization to upload packages on your behalf.
    In a web browser, go to https://accounts.google.com/o/oauth2/auth?access_type=offline&approval_prompt=force&response_type=code&client_id=818368855108-8grd2eg9tj9f38os6f1urbcvsq399u8n.apps.googleusercontent.com&redirect_uri=http%3A%2F%2Flocalhost%3A57888&code_challenge=D-XUNBhGVXSqTeFCnJrTkq1nDeqLo1tHcUyp1gvRziM&code_challenge_method=S256&scope=openid+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email
    Then click "Allow access".
根据提示打开链接后会需要登录Google账号，登录成功后即开始上传，终端提示如下：

    Waiting for your authorization...
    Authorization received, processing...
    Successfully authorized.
    Uploading...
    Successfully uploaded package.
若是出现报错：
    
    It looks like accounts.google.com is having some trouble.
    Pub will wait for a while before trying to connect again.
    OS Error: Operation timed out, errno = 60, address = accounts.google.com, port = 53266

则先运行：

    export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087;
为终端设置代理，然后再运行发布命令