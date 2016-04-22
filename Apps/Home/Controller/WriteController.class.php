<?php


namespace Home\Controller;

class WriteController  extends BaseController{
    public function Index(){
       
       if($this->isLogin()){
           $book = D('book');
           echo $book;
           $this->display();
       }
    }
    public function write(){
        if(is_POST) {
            //判断用户输入的是否符合要求
            if(!empty($_POST['mood'])){
                $data['mood'] = htmlentities($_POST['mood']);
            }else{
                $this -> error("心情不能为空！");
            }
            if(!empty($_POST['weather'])){
                $data['weather'] = htmlentities($_POST['weather']);
            }else{
                $this -> error("天气不能为空！");
            }
            if(!empty($_POST['title'])){
                $data['title'] = htmlentities($_POST['title']);
            }else{
                $this -> error("标题不能为空！");
            }
            if(!empty($_POST['content'])){
                $data['content'] = htmlentities($_POST['content']);
            }else{
                $this -> error("内容不能为空！");
            }
            $data['private'] = htmlentities($_POST['private']);//私有权限
            if($data['private'] ==null){
                $data['private'] = 0;
            }
            //p($data['private']);

            //实例化表
            $users = D('User');
            $book = D('Book');
            $username = session(userName);//求出用户名
            //查找已登录的用户ID
            $userinfo = $users ->getUserByUsername($username);
            $data['uid'] = $userinfo['id'];

          //  $con[] =array( 'tittle'=> $data['mood'],'content'=>)
            if($book -> addBook($data)){
                $this ->success("日记写好啦！","../Index/Index");//跳转到查看笔记
            }else{
                $this ->error("发表日记失败！请联系管理员！QQ:2013855675");
            }
        }else{
            $this ->error("程序出错!!");
        }
    }
}
