<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Home\Controller;

/**
 * Description of MybooksController
 *
 * @author Administrator
 */
class MybooksController extends BaseController{
    
    public function index(){
        $book = D('Book');
        $users = D('User');
        $usersinfo = D('UserInfo');
        
        //获取当前用户信息
        $username = session('userName');
        $users = $users->getUserByUsername($username);
        
        //获取最新的5条共享的日记
        $getLastBooks = Ftime( $book->getLastFiveRecords() );
        
        //获取用户图像位置信息
        $userinfo = Fdate( $usersinfo->getUsersinfo($users['id'])) ;
        
        $userImage = UPLOAD_PATH.$userinfo['image'];//拼用户图像地址
        
        //获取用户的所有日记
        //分页
        $count = $book->book_count();
        $page = new \Think\Page($book->where(['uid'=>$users['id']])->count(),6);
        $page->setConfig('first', '第一页');
        $userAllBooks = $this->isHidden( Ftime( $book->getBooksByUid( $page->firstRow , $page->listRows , $users['id']) ) );
        
        $this->assign('page',$page);
        
        $this->assign('userinfo',$userinfo);
        $this->assign('userImage',$userImage);
        $this->assign('userAllBooks',$userAllBooks);
        $this->assign('getFiveRecords',$getLastBooks);
        $this->assign('username',$username);
        $this->display();
    }
    /**
     * 判断是不是私有日记
     */
    public function isHidden($userAllBooks){
        $i = 0;
        while($userAllBooks[$i]['id']){
            if( !$userAllBooks[$i]['hidden'] ){
                $userAllBooks[$i]['hidden'] = '仅自己可见';
            }else{
                $userAllBooks[$i]['hidden'] = '可共享的日记';
            }
            $i++;
        }
        return $userAllBooks;
    }
}
