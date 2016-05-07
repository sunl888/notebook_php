<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Home\Controller;

/**
 * Description of FindController
 *'发现'控制器  显示所有用户的日记
 * @author 土豆
 */
class FindController extends BaseController{
    
   public function index(){
       
       if($this->isLogin()){
           $book = D('Book');
           
           $count = $book->book_count();
           
           $page = new \Think\Page($count,6);
           //p($page);
           $page->setConfig('first', '第一页');
           echo $limit."<br/>".$offset;
           $records = Ftime( $book->getAllRecords($page->firstRow , $page->listRows) );
          
           //拼用户图像
           $this->assign('uploads','Uploads/');
           //分页
           $this->assign('page',$page);
           
           $this->assign('records',$records);
           $this->display();
       }
    }
    
}
