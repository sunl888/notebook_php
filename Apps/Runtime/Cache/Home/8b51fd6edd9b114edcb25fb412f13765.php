<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!-- 新 Bootstrap 核心 CSS 文件 -->
        <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <!-- 可选的Bootstrap主题文件（一般不用引入） -->
        <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
        <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
        <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
        <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
        <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="/notebook_php/Public/home/css/register.css">
        <script src="/notebook_php/Public/home/js/register.js" language="javascript"></script>
        <script src="/notebook_php/Public/home/js/regcheck.js" language="javascript"></script>
        <title>云日记</title>
    </head>
    <body>
        <div class="container">
                <!--Native-->
            <header class="navbar navbar-static-top bs-docs-nav" id="top" role="banner">
                <div class="container">
                        <div class="navbar-header">
                            <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#bs-navbar" aria-controls="bs-navbar" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand">云日记</a>
                        </div>
                        <nav id="bs-navbar" class="collapse navbar-collapse">
                          <ul class="nav navbar-nav">
                                <li><a href="#" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click'])">首页</a></li>
                                <li><a href="#" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click'])">发现</a></li>
                                <li><a href="#" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click'])">写日记</a></li>
                           </ul>
                          <ul class="nav navbar-nav navbar-right">
                               <li><a href="<?php echo U('Register/index');?>" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click'])">注册</a></li>
                                <li><a href="<?php echo U('Setting/index');?>" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click'])">设置</a></li>
                                <li><a href="#" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click'])">退出</a></li>
                          </ul>
                        </nav>
                  </div>
            </header>
            <!--content-->
			<h3>注册账号</h3>
            <hr/>
            <form action="<?php echo U('Register/doRegister');?>" method="POST" name="form"  enctype="multipart/form-data">
                    <!--上传图像控件-->
                <div class="upload-box">
                    <input type="file" name="face" onchange="previewImage(this)" class="input"  accept="jpg,gif,bmp,png,jpeg" >
                    <div class="mask"></div>
                    <div id="preview">
                        <img id="imghead" src="/notebook_php/Public/home/img/default_face.jpg" border="0">
                    </div>
               </div>
               <!--输入框-->
                <div class="form-group">
                        <label class="col-sm-3 control-label">账号:</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" name="username" placeholder="账号">
                        </div> <br/><br/>
                        <label class="col-sm-3 control-label">密码:</label>
                        <div class="col-sm-9">
                          <input type="password" class="form-control" name="password" placeholder="密码必须是6-16位字母与数字的组合喔">
                        </div> <br/><br/>
                        <label class="col-sm-3 control-label">重输密码:</label>
                        <div class="col-sm-9">
                          <input type="password" class="form-control" name="repassword" placeholder="再次输入密码">
                        </div> 
                        <!--submit-->
                        <button type="submit" class="btn btn-primary" onclick="return check();" >点击马上注册喔</button>
                </div>
            </form>
        </div>
    </body>
</html>