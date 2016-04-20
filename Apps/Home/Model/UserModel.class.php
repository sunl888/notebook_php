<?php
/**
 * Created by PhpStorm.
 * User: 孙龙
 * Date: 2016/4/7
 * Time: 20:53
 * 用户对account表的操作:查询  修改  
 */
namespace Home\Model;
use Think\Model;

class UserModel extends Model{
    protected $tableName = 'users';//设置数据表名
    /**
     * 通过id来查找表中对应的记录
     */
    public function getUserByid($id){
        return $this->where('id='.intval($id))->find();
    }
    /**
     * 通过用户名获取该用户的结果集
     * @param $username
     * 返回一个结果集  通过比较结果集中的password和输入的password判断密码是否相等
     * @return mixed
     */
    public function getUserByUsername($username){
        return $this->where(['username'=>$username])->find();//提取其中的password与用户输入的pass进行比较登陆
    }
    
    /**
     * 注册:将用户名和密码写入数据库
     */
    public function write($username,$password){
        //注册时间
         return $this->add(['username'=>$username,'password'=>$password]);
    }
    /**
     * 1.更新最近登陆IP
     * 2.更新最近登陆时间戳
     * $模型->where(‘id=1’)->save($data);
     * $模型->where(‘id=1’)->data($data)->save();
     * echo date("Y-m-d H:i:s","1460345786"); die;
     * echo  M("member")->getLastSql();打印sql语句
     */
    public function UpdateLastLoginIP($id){
         $ip = get_client_ip();
         $lastloginIP = ip2long($ip);
        return $this->where("id = %d",array($id))->setField('lastloginIP',"$lastloginIP");//更新
    }
    public function UpdateLastLoginTime($id){
        $lastlogintime = time();
        return $this->where("id = %d",array($id))->setField('lastloginTime',"$lastlogintime");
    }
}