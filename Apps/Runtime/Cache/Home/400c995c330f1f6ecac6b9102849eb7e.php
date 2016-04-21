<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<!--总有一些不经意的时光，需要被镌刻-->
<head>
    <title>云日记</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" href="/notebook_php/Public/home/css/css.css" />
</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a href="#" class="brand">云日记</a>
                <div class="nav-collapse">
                    <ul class="nav nav-pills">
                        <li><a href="<?php echo U('Index/index');?>" >首页</a></li>
                        <li><a href="<?php echo U('Find/index');?>">发现</a></li>
                        <li><a href="<?php echo U('Write/index');?>">写日记</a></li>
                    </ul>
                </div>
                <ul class="nav navbar-nav" style="float:right;">
                    <li><a href="<?php echo U('Register/index');?>">注册</a></li>
                     <li><a href="<?php echo U('Setting/index');?>">设置</a></li>
                     <li><a href="<?php echo U('Logout/index');?>">退出</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container">
      <div class="div-fluid show-grid">
        <div class="row">
          <div class="span8">
            <div class="row">
              <h4><?php echo ($userName); ?>的动态</h4><hr>
              <p>我们坚信每个人的生活都有一些小时光值得被记录，希望通过网站能唤起人们用文字记录生活的这种被遗忘很久的习惯。</p>
            </div>
          </div>
          <div class="span4">
            <h4>欢迎回来,<?php echo ($userName); ?>!</h4><hr>
            <div id="J_UserBar">
              <div id="J_UserBar" class="btn-group hot" style="text-align:center;">
                <a href="<?php echo U('Write/index');?>" class="btn btn-primary">我要写日记啦</a>
                <a href="<?php echo U('Mybooks/index');?>" class="btn">查看我的日记</a>
              </div>
            </div><hr>
            <div class="hot">
              <span style="font-size:18px;text-align:center;display:block;padding:10px;line-height:30px;background:#f9f9f9;color:#317eac;">欢迎来到云日记<br>
            </div><hr>
            <div class="hot">
              <ul>
                  <li><a href="#">你也可以和别人分享你的日记喔</a></li>
                  <li><a href="#">还等什么呢?</a></li>
                  <li><a href="#">赶紧开始你的日记之旅吧.</a></li>
                  
      <input name="checkbox" type="checkbox" checked="checked" />只有自己可见
              </ul>
            </div>
            <div class="hot"> 
                <ul>
                    <?php if(is_array($getFiveRecords)): foreach($getFiveRecords as $key=>$vo): ?><li><a href="<?php echo U('List/index',['id'=>$vo['id']]);?>"><?php echo ($vo["username"]); ?></a> 写了一篇 日记 <?php echo ($vo["addtime"]); ?></li><?php endforeach; endif; ?>
              </ul>
            </div>
        </div>
    </div><hr/>
  </div>
 </div>
<footer>
    <p style="text-align:center;font-size:14px;">版权所有 &copy; 淮南师范学院&nbsp;皖ICP备16000979号</br>powered by E8工作室</br>Email:2013855675@qq.com</p>
</footer>
</body>
</html>