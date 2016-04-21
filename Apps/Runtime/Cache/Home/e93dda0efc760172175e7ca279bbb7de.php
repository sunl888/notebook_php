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
        <div class="span8">
            <h4><span><?php echo ($username); ?> 的日记</span></h4>
            <?php if(is_array($userAllBooks)): foreach($userAllBooks as $key=>$vo): ?><div class="Diary-wrap">
                    <h5> 标题: <a href="<?php echo U('List/index',['id'=>$vo['id']]);?>"><?php echo ($vo['title']); ?></a>
                        <small>[ <?php echo ($vo['private']); ?> ] </small>
                        <small>[天气:<?php echo ($vo['weather']); ?>] </small>
                        <small>[心情:<?php echo ($vo['mood']); ?>] </small>
                    </h5>
                    <div class="Diary-content">
                        <p style="max-height: 70px;overflow:hidden;text-overflow:ellipsis;word-break:normal;"><?php echo ($vo['content']); ?></p>
                    </div>
                    <div class="bar"><?php echo ($vo['addtime']); ?> 
                        <small><?php echo intval($vo['views']);?>阅读</small>
                    </div>
                </div><?php endforeach; endif; ?>
        </div>
        
        <div class="span4">
            <div class="User-box well">
                <dl class="pl">
                    <dt> 
                        <img src="/notebook_php/<?php echo ($userImage); ?>" style="border-radius: 10%; width: 150px;height: 150px;margin: auto;text-align: center;display: block;">
                    </dt>
                    <dd> <p style="text-align: center;font-size: 17px;margin-top: 15px;"><?php echo ($username); ?> 于<?php echo ($userinfo['regtime']); ?> 日加入</dd>
                    <div id="J_UserBar" class="btn-group hot" style="text-align:center;">
                      <a href="<?php echo U('Write/index');?>" class="btn btn-primary">我要写日记啦</a>
                    </div>
                </dl>
            </div>
            <div class="row Note-list hot">
                  <ul>
                    <?php if(is_array($getFiveRecords)): foreach($getFiveRecords as $key=>$vo): ?><li style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;"><a href="<?php echo U('List/index',['id'=>$vo['id']]);?>"><?php echo ($vo["username"]); ?></a>写了一篇日记<?php echo ($vo["addtime"]); ?></li><?php endforeach; endif; ?>
                 </ul>
            </div>
        </div>
    </div>
    <!--分页-->
    <div class="pagination" style="text-align:center;margin-bottom:80px;">
      <ul>
        <?php echo $page->show();?>
      </ul>
    </div>
    
    <hr>
    <footer>
      <p style="text-align:center;font-size:14px;">版权所有 &copy; 淮南师范学院&nbsp;皖ICP备16000979号</br>powered by E8工作室</br>Email:2013855675@qq.com</p>
    </footer>
   </body>
</html>