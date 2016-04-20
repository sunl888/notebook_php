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
           $book = D('Book');
           
           
           $this->display();
       }
    }
}
