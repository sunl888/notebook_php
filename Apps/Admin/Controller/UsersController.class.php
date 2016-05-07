<?php
//+---------------------------------
//| E8网络工作室 http:www.e8net.cn
//+---------------------------------
//| 后台管理员控制器
//+---------------------------------
//| Author: webdd <2014//8/27>
//+---------------------------------

namespace Admin\Controller;
use Think\Controller;

class UsersController extends BaseController {
	/**
	*
	*显示所有管理员信息
	*/
	public function index(){

		$users = D ('users');
		$Role = D ('Role');

		$where = "";
		
		// 分页处理,获取数据
		$count = $users->where ( $where )->count();//select count(*) from user  where() 
		$Page = new \Think\Page ( $count, 15 );
		$show = $Page->show ();
		
		$usersArr = $users->where ( $where  )->order('lastloginTime desc')->limit ( $Page->firstRow . ',' . $Page->listRows )->select();
		//$users->where("id = 1")->limit(0,10)->order("addrime desc")->select();
		//dump($userArr);die;	
		// /echo $users->getlastsql();die;
		//select id,name from user where id = 1 limit(0,10) order by addtime desc
		//
		//$users->select();
//p($usersArr);
		foreach ($usersArr as $key=>$val){
			$usersArr[$key]['mw'] = passport_encrypt($val['id']);
                        $usersArr[$key]['lastloginip'] = long2ip( $usersArr[$key]['lastloginip'] );
		}
                
                
                
		$this->assign('usersArr',$usersArr);
		$this->assign('page',$show);
		$this->display();
	}

		public function edits(){
		$Users = D("Users");
		$id = $_GET['id'];

			if (empty($id) || empty($mw) || !compare($id,$mw) || empty($users)) {
			$data['status'] = 0;
		}

		if (empty($_POST['password'])) {
			$data['status'] = 0;
			$data['msg'] = "密码不能为空";
			$this->error($data['msg'],'');
		}

		if ($_POST['password'] !== $_POST['truepassword']){
			$data['status'] = 0;
			$data['msg'] = "两次密码不一致";
			$this->error($data['msg'],'');
		}
                if ($_POST['password']=="default") {
			$u['password'] = $user['password'];
		} else {
			$u['password'] = md5($_POST['password']);
		}

		if ($_POST['password']!==$_POST['truepassword']) {
			$u['password'] = $users['password'];
		} else {
			$u['password'] = md5($_POST['password']);
		}

		$u['status'] = $_POST['status'];
		$u['remark'] = $_POST['remark'];
		$u['password'] = $_POST['password'];

		$flag = $Users->where('id='.$id)->save($u);

		if ( $flag !== false ) {
			$data['status'] = 1;
			$data['msg'] = "修改用户成功!";
			$this->success($data['msg'],'');
		} else {
			$data['status'] = 0;
			$data['msg'] = "修改用户失败!";
			$this->error($data['msg'],'');
		}
		}


		public function edit(){
		$Users = D("Users");
		$id = $_GET['id'];
		$mw = $_GET['mw'];			

		if (empty($id) || empty($mw)) $this->error("缺少必要参数!");
		if (!compare($id,$mw)) $this->error("错误或恶意的操作,您的IP已被记录!");
		$users = $Users->find($id);
		if (empty($users)) $this->error("该用户不存在!");

		$this->assign('users',$users);
		$this->assign('mw',$mw);
		$this->display();
	
	}
	public function del(){
		$Users = D('Users');
		$id = $_GET['id'];
		$mw = $_GET['mw'];
		
		if (empty($id) || empty($mw)) $this->error("缺少必要参数!");
		if (!compare($id,$mw)) $this->error("错误或恶意的操作,您的IP已被记录!");
		$Users = M('Users');
		$res = $Users->find($id);
		if (empty($res)) $this->error("该用户不存在!");
		//删除头像图片
		if ($res['photo'] !== 'photo/default.jpg') unlink ( $this->uploadPath . $res ['photo'] );
		if ($Users->delete($id) !== false){
			//写入日志
//			$Operationlog = D ('Operationlog');
//			$info = "提示语：删除用户成功 <br />模块：".MODULE_NAME.",控制器：".CONTROLLER_NAME.",方法：".ACTION_NAME." <br />请求方式：GET";
//			$get = __SELF__;
//			$Operationlog->write($uid,$data['status'],$info,$get);
			$this->success("删除用户成功!");
		} else{ 
			$this->error("删除用户失败!");
		}

	}

}