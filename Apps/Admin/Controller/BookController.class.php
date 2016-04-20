<?php
//+---------------------------------
//| 
//+---------------------------------
//| 
//+---------------------------------
//| 
//+---------------------------------

namespace Admin\Controller;
use Think\Controller;

class BookController extends BaseController {
	public function index(){

	$book = D ('book');
	//$Role = D ('Role');
	$Users = D ('Users');
	$where = "";
	
	// 分页处理,获取数据
	$count = $book->where ( $where )->count();
	$Page = new \Think\Page ( $count, 15 );
	$show = $Page->show ();
	
	$bookArr = $book->where ( $where )->limit ( $Page->firstRow . ',' . $Page->listRows )->select();

	foreach ($bookArr as $key=>$val){
		$bookArr[$key]['mw'] = passport_encrypt($val['id']);
		$uid = $bookArr[$key]['uid'];//取出book表uid
		$user_name = $Users -> where("id = $uid")->find();//根据uid去获取users表用户名称 getField();
		// echo $Users->getlastsql();
		 //p($user_name);
		$bookArr[$key]['user_name'] = $user_name['username'];//拼接uid到bookArr数组
		//echo $bookArr[$key]['hidden'];

		if($bookArr[$key]['hidden']){
			$button[$key] = "1";

		}else{
			$button[$key] = "0";
		}
	}
	$this->assign('bookArr',$bookArr);
	$this->assign('button',$button);
	$this->assign('page',$show);
	$this->display();
	}

	public function del(){
		$book = D ('book');
		//$book->del($this->users['id']);    //不知道有啥用
		$id = $_GET['id'];
		$mw = $_GET['mw'];
		
		if (empty($id) || empty($mw)) $this->error("缺少必要参数!");
		if (!compare($id,$mw)) $this->error("错误或恶意的操作,您的IP已被记录!");

		$res = $book->find($id);
		if (empty($res)) $this->error("笔记不存在!");
		//删除头像图片
		if ($res['photo'] !== 'photo/default.jpg') unlink ( $this->uploadPath . $res ['photo'] );
		if ($book->delete($id) !== false){
			//写入日志
			$Operationlog = D ('Operationlog');
			$info = "提示语：删除笔记成功 <br />模块：".MODULE_NAME.",控制器：".CONTROLLER_NAME.",方法：".ACTION_NAME." <br />请求方式：GET";
			$get = __SELF__;
			$Operationlog->write($uid,$data['status'],$info,$get);
			$this->success("删除笔记成功!");
		} else{ 
			$this->error("删除笔记失败!");
		}

	}

	/**
	*
	*审核
	**/
	public function audit(){
		$Book = D('book');
		$id = $_GET['id'];
		$mw = $_GET['mw'];
		$where = "id=$id";
		if (empty($id) || empty($mw)) $this-> error("缺少必要参数!");

		$res = $Book-> where($where)-> find();

		if (empty($res)){
			$this->error("笔记不存在!");
		}

		if($res['hidden'] == 1){
			$data['hidden'] = 0;
			$msg = "取消审核!";
		}else if($data['hidden'] == 0){
			$data['hidden'] = 1;
			$msg = "审核成功!";
		}

		if($Book-> where($where)->setField($data) == false){
			$this-> error("操作失败!");
		}else{
			if($data['hidden'] == 0){
				$this-> success($msg);
			}else{
				$this-> success($msg);
			}
		}
	
	}






	/**
	*
	*查看
	*
	**/
public function look(){
	$Book = D('book');
	$id = $_GET['id'];
	$mw = $_GET['mw'];
	$where = "id=$id";
	
	if (empty($id) || empty($mw)) $this-> error("缺少必要参数!");
	$res = $Book-> where($where)-> find();
	if (empty($res)){
		$this->error("笔记不存在!");
	}
	$this->assign('res',$res);
	$this->display();
}



}