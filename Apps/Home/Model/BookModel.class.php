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
class BookModel extends Model
{
    //对book表降序排序 取出前5条记录
    public function getLastFiveRecords()
    {
        $getRecords = $this->field('b.id , b.title , b.addtime , u.username')
            ->alias('b')
            ->join('right join __USERS__ as u on b.uid = u.id')
            ->where(['b.hidden' => 0,'b.private'=>0])
            ->order('b.addtime desc')
            ->limit(5)
            ->select();
        return $getRecords;
    }
    
    /**
     * 
     * 获取所有可共享的日记总条数
     * @return count
     */
    public function book_count()
    {
        return $this->where(['private'=>0,'hidden'=>0])->count();
    }

    /**
     * 
     * @param type $limit
     * @param type $offset
     * @return type
     * 获取所有的可共享的日记并分页
     */
    public function getAllRecords($limit, $offset)
    {
        return $this->field('b.id , b.title ,b.mood , b.weather , b.addtime , b.content, b.views , u.username,ui.image')
            ->alias('b')
            ->join('right join __USERS__ as u on u.id = b.uid')
            ->join('right join __USERSINFO__ as ui on u.id=ui.uid')
            ->where(['b.hidden' => 0,'b.private' => 0 ])
            ->order('b.addtime desc')
            ->limit($limit . ',' . $offset)
            ->select();
    }

    public function addBook($data)
    {   //p($data);
        return $this->add(['mood' => $data['mood'], 'uid' => $data['uid'], 'weather' => $data['weather'], 'title' => $data['title'], 'content' => $data['content'], 'private' => $data['private'],'addtime'=>time()]);
    }
    /**
     * 
     * @param type $bid
     * @return type
     * 通过bookID来获取某一条日记及其相关信息
     */
     public function getBookByBid($bid){
         
        return $this->field('b.id , b.title ,b.content , b.mood , b.weather , b.addtime , b.views , u.username , ui.image')
                    ->alias('b')
                    -> join('right join __USERS__ as u on u.id = b.uid')
                    ->join('right join __USERSINFO__ as ui on u.id = ui.uid')
                    ->where(['b.hidden'=>0,'b.id'=>$bid])
                    ->limit(1)
                    ->select();
    }
    
    //查找当前用户所有的日记
    public function getBooksByUid($limit , $offset , $uid){
        
        return $this-> where(['uid'=>$uid,'hidden'=>0 ])->order('addtime desc')->limit($limit.','.$offset)->select();
    }
    
    //某条日记的浏览量
    public function addviews($bid){
        $views = $this->where(['id'=>$bid])->find();
        return $this->where(['id'=>$bid])->save(['views'=> $views['views']+1]);
    }
}