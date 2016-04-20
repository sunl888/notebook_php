<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends BaseController {

    public function index()
    {
        //当用户登陆后跳转到主页面
        if($this->isLogin()){
            $this->assign('userName',Session('userName'));
            $userbook = D('Book');
            
            //最新动态模块
            //获取5条最新的日记(格式化时间戳)
            $getFiveRecords = formatTime( $userbook->getLastFiveRecords() );
            $this->assign('getFiveRecords',$getFiveRecords);
            $this->display();//显示主界面
        }
    }
}