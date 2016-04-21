<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Home\Controller;

/**
 * Description of WriteController
 *
 * @author Administrator
 */
class WriteController  extends BaseController{
    public function index(){
       
       if($this->isLogin()){
           $this->display();
       }
    }
    public function addBook(){
        $book = D('Book');
        $mood = I('post.mood','','trim');
        $weather = I('post.weather','','trim');
        $title = I('post.title','','trim');
        $content = I('post.content','','trim');
        $hidden = I('post.hidden','','trim');
        
        p( $mood.$weather.$title.$content .$hidden);
        //获取当前用户的id
        $user = $book->getUserByUsername(session('userName'));
         
    }
}
