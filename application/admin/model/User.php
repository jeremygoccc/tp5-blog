<?php
namespace app\admin\model;
use think\Model;

class User extends Model {

    protected $auto = [];
    protected $insert = ["register_time"];
    protected $update = ["register_time"];

    protected function setRegisterTimeAttr() {
        return time();
    }

    // 获取器
    public function getRegisterTimeAttr($time) {

    }

    public function getUser($id=null) {
        if(!empty($id)) {
            $res = $this->alias("u")
                        ->where(['u.id'=>$id])
                        ->find();
            $arr = $res->toArray();
        } else {
            $res = $this->alias("u")
                        ->select();
            foreach ($res as $key => $value) {
                $arr[] = $value->toArray();
            }
        }
        return $arr;
    }

    public function getName($name) {
        $res = $this->alias("u")
                    ->where(["u.name"=>$name])
                    ->find();
        return $res;
    }

}

 ?>