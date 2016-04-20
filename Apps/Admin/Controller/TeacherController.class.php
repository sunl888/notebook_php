<?php
//+---------------------------------
//| E8网络工作室 http:www.e8net.cn
//+---------------------------------
//| 老成员控制器
//+---------------------------------
//| Author: 朱荣繁 <>
//+---------------------------------

namespace Admin\Controller;
use Think\Controller;

class TeacherController extends BaseController{
	
	/**
	*查看教师信息
	**/
	public function index(){
		$Teacher = D("Teacher");
		//分页
		$where = "";
		$count = $Teacher->where($where)->count();
		$Page = new \Think\Page($count , 10);
		$show = $Page->show();
		$teacherList = $Teacher->where($where)->limit ( $Page ->firstRow.','.$Page ->listRows )->order("id")->select();
		for ($i=0;$i<count($teacherList);$i++) {	
			$teacherList[$i]['mw'] = md5($teacherList[$i]['id']);
		}
		//p($teacherList);
		$this -> assign("teacherList",$teacherList);
		$this->assign ('page',$show);
		$this -> display();
	}

	/**
	*添加教师信息
	**/
	public function add(){
		$Teacher = D("Teacher");
		if(IS_POST){
			//上传图片
            $Upload = new\Libs\Util\Upload();
            if($_FILES['photo']['name'] != ""){
                $fileInfo = $Upload -> Upload('image',true);
                $data['photo'] = $fileInfo;
            }
			$data['name'] = $_POST['name'];
			$data['position'] = $_POST['position'];
			$data['introduction'] = $_POST['introduction'];
			if($data['name'] == ""){
				$this -> error("教师姓名不能为空!");
			}
			if($Teacher -> add($data)){
				$this -> success("添加教师信息成功!",__APP__.'/Teacher/index');
			}else{
				$this -> error("添加教师信息失败!");
			}
		}else{
			$this -> display();
		}
	}
	/**
	*修改教师信息
	**/
	public function edit(){
		$Teacher = D("Teacher");
		$id = $_GET['id'];
		$mw = $_GET['mw'];
		if(IS_POST){

			//获取唯一标识 id

			//写入

			$teacher = $Teacher->find ( $id );
			if (empty ( $teacher )){
				$this->error ( "指定教师不存在!" );
			}else{
				
				$where = "id = $id";

				//修改缩略图
				$Upload = new\Libs\Util\Upload();
				if($_FILES['photo']['name'] != ""){
					$fileinfo = $Upload->upload("image",true);
					//删除图片
					$thumb = $Teacher->where($where)->getField("photo");
					unlink($_SERVER['DOCUMENT_ROOT'].$thumb);
					//重新写入照片
					$data['photo'] = $fileinfo;
				}
				
				$data['name'] = $_POST['name'];
				$data['position'] = $_POST['position'];
				$data['introduction'] = $_POST['introduction'];
				//p($data);

				$editResult = $Teacher -> where("id = $id") -> save($data);

				if($editResult){
					$this -> success("修改教师信息成功!",__APP__.'/Teacher/index');
				}else{
					$this -> error("修改教师信息失败!");
				}
			}
				
		}else{

			if (empty ( $id ) || empty ( $mw ))
				$this->error ( "缺少必要参数!" );

			if (($teacher = $Teacher->find ( $id )) == null) {
				$this->error ( '该教师不存在!' );
			}
			// select id from  T where id = 1
			// select * from T where id  = 1 

			$teacherList = $Teacher -> find($id);

			$this -> assign("teacherList",$teacherList);
			$this -> display();

			//->where()->getField('id')  find()   
		}
		
	}


	select() save()  delete() add()

	D('表名','Mpdel') 

	D('表名')

	D('表名')->select()
	
	/**
	*删除教师信息
	*
	*/
	public function del(){
		$Teacher = D ('Teacher');
		if (isset($_GET['id'])) {
			$id = $_GET['id'];

			$arr = explode(",",$id);

			for($i=0;$i<count($arr);$i++){
				$Teacher->where ("id = $arr[$i]")->delete();
			}

			
			//写入日志
			$Operationlog = D ('Operationlog');
			$info = "提示语：删除教师成功! <br />模块：".MODULE_NAME.",控制器：".CONTROLLER_NAME.",方法：".ACTION_NAME." <br />请求方式：GET";
			$get = __SELF__;
			$Operationlog->write($this->user['id'],1,$info,$get,$this->user['last_login_ip']);
			
			$this->success("删除教师成功！",__APP__.'/Teacher/index');
		} else {
			$this->error('非法操作!',__APP__.'/Teacher/index');
		}
	}

	/**
	*查看教师信息
	**/
	public function view(){
		$Teacher = D("Teacher");
		$id = $_GET['id'];
		$teacherList = $Teacher -> where("id = $id") -> find();
		$this -> assign("teacherList",$teacherList);
		$this -> display();
	}
}

/*
*/
