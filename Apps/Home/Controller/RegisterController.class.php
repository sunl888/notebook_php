<?php

namespace Home\Controller;

/**
 * Description of RegisterController
 *
 * @author 孙龙
 * 
 */
class RegisterController  extends BaseController{
    
    public function index(){
        $this->display();
    }
    public function doRegister(){
        //  username password repassword  qq phone address  about image
        //1.判断用户输入数据的合法性  
        //2.调用Model对数据进行添加操作
        //3.跳转到登陆界面 
        
        //获取数据      
        $username = I('post.username','','trim');
        $password = md5(I('post.password','','trim'));
        //判断用户名是否被注册过
        $passport = D('Passport');
        if($passport->hasUser($username)){
            return $this->error('用户名已被注册!');
        }
        //接收头像
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     1024*1024*6 ;// 设置附件上传大小不限
        $upload->exts      =     array('jpg','gif','bmp','png','jpeg');// 设置附件上传类型
        $upload->rootPath  =      './Uploads/'; // 设置附件上传根目录
        $upload->subName   =  array('date', 'Y/m/d');
        // 上传单个文件 
        $info   =   $upload->uploadOne($_FILES['face']);
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
             $fileName = $info['savepath'].$info['savename'];
        }
        //写入数据库
        $user = D('User');
        $userinfo = D('UserInfo');
        $userID = $user->write($username,$password);//向users表写入用户名和密码
        $user->UpdateLastLoginIP($userID);//更新ip地址和时间
        $user->UpdateLastLoginTime($userID);
        //通过uid向usersinfo表中添加记录  并将上传的图片地址写入image字段
        $userinfo->addUserImage($userID,$fileName);
        
        if($userID){
            //return $this->redirect('Login/Index');
            return $this->success('注册成功,正在返回登陆界面...',__APP__.'/Login/index');
        }else{
            return $this->error('注册失败.',__APP__.'/Register/index');
        } 
    }
}
