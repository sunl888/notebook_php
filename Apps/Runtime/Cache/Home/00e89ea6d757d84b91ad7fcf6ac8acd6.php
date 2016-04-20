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
      <div class="row-fluid show-grid">
        <div class="span12">
          <h4> <?php echo ($findbook[0]['username']); ?> 的日记 </h4><hr>
          <div class="Diary-wrap">
              <?php if(is_array($findbook)): foreach($findbook as $key=>$vo): ?><div class="Diary-row">
                  <div class="Diary-left">
                      <img src="/notebook_php/<?php echo ($uploads); echo ($vo["image"]); ?>" alt="用户图像" class="img-rounded" />
                  </div>
                    <div class="Diary-right"><h5> 
                      标题:<a href="#">  <?php echo ($vo["title"]); ?></a>
                        <small>[天气:<?php echo ($vo["weather"]); ?>] </small>
                        <small>[心情:<?php echo ($vo["mood"]); ?>] </small>
                      </h5>
                      <div class="Diary-content">
                        <p><?php echo ($vo["content"]); ?></p>
                      </div>
                      <div class="bar"><?php echo ($vo["addtime"]); ?>
                          <small><?php echo intval($vo['views']);?>人阅读</small>
                      </div>
                    </div>
                  </div><?php endforeach; endif; ?>	  	  
            </div>
          </div><hr>
      </div>
    </div>
    <footer>
         <p style="text-align:center;font-size:14px;">版权所有 &copy; 淮南师范学院&nbsp;皖ICP备16000979号</br>powered by E8工作室</br>Email:2013855675@qq.com</p>
    </footer>
    </body>
</html>