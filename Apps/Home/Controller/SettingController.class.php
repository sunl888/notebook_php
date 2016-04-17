<?php

namespace Home\Controller;
use Think\Controller;
/**
 *
 * @author 土豆
 */
class SettingController extends BaseController{
    public function index()
    {
        if($this->isLogin()){
            $this->display();//显示设置界面
        }
    }
    //将提交回来的信息写入usersinfo表中
    public function doSetting(){
        $users = D('User');
        $usersinfo = D('UserInfo');
        
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
        
        //获取数据
        $qq = I('post.qq','','trim');
        $phone = I('post.phone','','trim');
        $address = I('post.address','','trim');
        $about = I('post.about','','trim');
        $usersmess = $users->getUserByUsername(Session('userName'));
        $uid = $usersmess['id'];//users表的id
        $usersinfoID = $usersinfo->getUsersInfoID($uid);
        
        $delUsersPicture = $usersinfo->delUserPictureById($usersinfoID['id']);
        
        //$usersinfoID['id'] userinfo表的id
        $isSave = $usersinfo->write($qq,$phone,$address,$about, $usersinfoID['id'] ,$fileName);
        
        if($isSave){
            $this->success('帐户信息修改成功.正在返回首页',__APP__.'/Index/index');
        }else{
            $this->error('意外错误,信息修改失败,请稍候再试.',__APP__.'/Setting/index');
        }
        return true;
    }
}

?>