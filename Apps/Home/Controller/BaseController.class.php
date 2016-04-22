<?php
namespace Home\Controller;

use Think\Controller;

class BaseController extends Controller {
    
    //测试是否登陆过
    public function isLogin()
    {
        //echo U('Login/index');die;
        $value = Session('userName');
        
        if(!isset($value)){
           return $this->redirect('Login/index');//如果没有登陆跳转到登陆界面
        }else{
            return true;//已登录
        }
    }
}