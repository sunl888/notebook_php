<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Home\Controller;

/**
 * Description of LoginoutController
 *
 * @author 土豆
 */
class LogoutController extends BaseController{
    
    public function index(){
        session('userName',null);//清楚session
        $this->redirect('Login/index');
    }
    
}
