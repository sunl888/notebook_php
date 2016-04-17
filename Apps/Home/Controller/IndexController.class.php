<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends BaseController {

    public function index()
    {
        //当用户登陆后跳转到主页面
        if($this->isLogin()){
            $this->assign('userName',Session('userName'));
            $this->display();//显示主界面
        }
    }
}