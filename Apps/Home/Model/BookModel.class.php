<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Home\Model;
use Think\Model;
/**
 * Description of BookModel
 *
 * @author 土豆
 */
class BookModel extends Model{
    //对book表降序排序 取出前5条记录
    public function getLastFiveRecords(){
        $getRecords = $this->field('b.id , b.title , b.addtime , u.username')
                ->alias('b')
                ->join('right join __USERS__ as u on b.uid = u.id')
                ->where(['b.hidden'=>1])
                ->order('b.addtime desc')
                ->limit(5)
                ->select();
        return $getRecords;
        }
    public function book_count(){
        return $this->where('hidden=1')->count();
    }
    //分页
    public function getAllRecords($limit , $offset){
        return $this->field('b.id , b.title ,b.content , b.mood , b.weather , b.addtime , b.views , u.username , ui.image')
                    ->alias('b')
                    -> join('right join __USERS__ as u on u.id = b.uid')
                    ->join('right join __USERSINFO__ as ui on u.id = ui.uid')
                    ->where(['b.hidden'=>1])
                    ->order('b.addtime desc')
                    ->limit($limit.','.$offset)
                    ->select();
        //echo $this->getLastSql();die;
    }
    public function getBookByBid($bid){
        return $this->field('b.id , b.title ,b.content , b.mood , b.weather , b.addtime , b.views , u.username , ui.image')
                    ->alias('b')
                    -> join('right join __USERS__ as u on u.id = b.uid')
                    ->join('right join __USERSINFO__ as ui on u.id = ui.uid')
                    ->where(['b.hidden'=>1,'b.id'=>$bid])
                    ->limit(1)
                    ->select();
    }
    //查找当前用户所有的日记
    public function getBooksByUid($limit , $offset , $uid){
        
        return $this-> where(['uid'=>$uid])->limit($limit.','.$offset)->select();
    }
    
}