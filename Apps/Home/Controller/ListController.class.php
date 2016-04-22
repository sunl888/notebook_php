<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Home\Controller;

/**
 * Description of ListController
 *
 * @author Administrator
 */
class ListController extends BaseController{
    public function Index() {
        if($this->isLogin()){
            $book = D('Book');
            
            $bid = $_GET['id'];
            if(!isset($bid)){
                return $this->error('非法操作',__APP__.'/Find/Index');
            }
            //增加浏览量
            $book->addviews($bid);
            
            //通过bid查找book表的数据
            $findbook = Ftime( $book->getBookByBid($bid) );
            
            
            //拼用户图像
            $this->assign('uploads','Uploads/');
            $this->assign('findbook',$findbook);
            $this->display();
        }
    }
}
