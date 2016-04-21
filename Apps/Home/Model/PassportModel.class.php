<?php
/**
 * Created by PhpStorm.
 * User: 孙龙
 * Date: 2016/4/7
 * Time: 20:59
 */
namespace Home\Model;

class PassportModel{
    protected $error='';
    /**
     * 判断该用户是否存在
     * @param $user 用户唯一标识  id|username
     * @return bool
     */
    public function hasUser($user){
        $userModel = D('User');
        return $userModel->where(['username'=>$user])->count()>0;
    }
    /**
     * 登陆
     * @param $username
     * @param $password
     * @return bool
     */
    public function login($username,$password)
    {
        $user = D('User');
        
        $account = $user->getUserByUsername($username);
        if($account['password'] === $password){
            //更新最后登陆IP和Time
            $user->UpdateLastLoginIP($account['id']);//更新最近登陆IP
            $user->UpdateLastLoginTime($account['id']);//更新最近登陆时间戳
            return $account;
        }else{
            $this->error = '用户名或密码错误.';
            return false;
        }
    }
    public function getError(){
        return $this->error;
    }
}