<?php
namespace app\index\model;

use think\Model;

class Category extends Model {

    public function getAll() {
        $res = $this->where(['status'=>1])->select();
        foreach ($res as $key => $value) {
            $arr[] = $value->toArray();
        }
        // dump($arr);
        return $arr;
    }

    public function getOne($c_id) {
        $res = $this->where(['status'=>1, 'id'=>$c_id])
                    ->find();
        if($res === null) {
            $res = $this->where(['status'=>1, 'name'=>$c_id])
                        ->find();
        }
        return $res->toArray();
    }

}


 ?>