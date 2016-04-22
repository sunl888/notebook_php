<?php
namespace Home\Controller;
/**
 * Created by PhpStorm.
 * User: 孙龙
 * Date: 2016/4/7
 * Time: 20:06
 */


class LoginController extends BaseController{
    
    public function index(){
        $this->display();
        
    }
    
    public function doLogin(){

        if(empty($_POST['username'])){
            return $this->error('请输入用户名!');
        }
        if(empty($_POST['password'])){
            return $this->error('请输入密码!');
        }
        $username = I('post.username','','trim');// get post 方法获取参数
        $password = md5(I('post.password','','trim'));
        $passport = D('Passport');

        if(!$passport->hasUser($username)){
            return $this->error('用户名不存在!');
        }
        if($res = $passport->login($username,$password)){
            
            Session('userName',$res['username']);//在服务器端保存session
          //$this->success('登陆成功!',__APP__.'/Index/index');
            return $this->redirect('Index/index');//重定向到Index控制器
        }else{
            return $this->error('登陆失败! '.$passport->getError());
        }
    }
}