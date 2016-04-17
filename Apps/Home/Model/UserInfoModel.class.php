<?php

namespace Home\Model;
use Think\Model;
/**
 * Created by PhpStorm.
 * User: 孙龙
 * Date: 2016/4/11
 * Time: 20:53
 * 通过RegisterController传进来的id对accountinfo表进行操作
 */
class UserInfoModel extends Model{
    protected $tableName = 'usersinfo';
    public function write($qq,$phone,$address,$about,$uid,$image){
         return $this->where(['uid'=>$uid])->save(['qq'=>$qq,'phone'=>$phone,'address'=>$address,'about'=>$about,'image'=>$image]);
    }
    
    //为新注册的帐户添加一张照片
    public function addImage($uid,$image){
        return $this->add(['uid'=>$uid,'image'=>$image]);
    }
    //通过users表的id来找到对应usersinfo表的id
    public function getUsersInfoID($usersID){
        return  $this->where(['uid'=>$usersID])->find();
    }
}
