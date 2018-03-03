<?php
namespace app\index\model;

use think\Model;

class Articles extends Model {

    protected $auto = [];
    protected $insert = ["create_time"];
    protected $update = ["update_time"];

    protected function setCreateTimeAttr() {
        return time();
    }

    protected function setUpdateTimeAttr() {
        return time();
    }

    // 获取器
    public function getCIdAttr($c_id) {
        $category = new \app\index\model\Category;
        $cname = $category::get($c_id);
        return $cname["name"];
    }

    public function getUIdAttr($u_id) {
        $user = new \app\admin\model\User;
        $uname = $user::get($u_id);
        return $uname["name"];
    }

    public function getAtc($id=null) {
        if(!empty($id)) {
            $res = $this->alias("a")
                        ->where(["a.c_id"=>$id, 'a.status'=>1])
                        ->join("user u", "a.u_id=u.id", "left")
                        ->join("category c", "a.c_id=c.id", "left")
                        ->field("a.*, u.name uname, c.name cname, c.summary cinfo")
                        ->select();
        } else {
            $res = $this->alias("a")
                        ->where(["a.status"=>1])
                        ->join("user u", "a.u_id=u.id", "left")
                        ->join("category c", "a.c_id=c.id", "left")
                        ->field("a.*, u.name uname, c.name cname")
                        ->select();
        }

       $arr = [];
       foreach ($res as $key => $value) {
            $arr[] = $value->toArray();
       }
       return $arr;
    }

    public function getOne($id) {
        $res = $this->alias("a")
                    ->where(['a.id'=>$id])
                    ->join("user u", "a.u_id=u.id", "left")
                    ->join("category c", "a.c_id=c.id", "left")
                    ->field("a.*, u.name uname, c.name cname")
                    ->find();
        return $res->toArray();
    }

}


 ?>