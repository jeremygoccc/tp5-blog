<?php
namespace app\index\model;

use think\Model;

class Category extends Model {

    public function getDire() {
        $res = $this->where(['status'=>1])->select();
        foreach ($res as $key => $value) {
            $arr[] = $value->toArray();
        }
        return $arr;
    }

    public function getAll() {
        $res = $this->where(['status'=>1])->select();
        foreach ($res as $key => $value) {
            $arr[] = $value->toArray();
        }
        // dump($arr);
        foreach ($arr as $one => $first) {
            if($first['p_id'] == '0') {
                foreach ($arr as $two => $second) {
                    if($second['p_id'] == $first['id']) {
                        $child[] = $second;
                    }
                }
                $first['child'] = $child;
                $child = null;
                $arr2[] = $first;
            }
        }
        // dump($arr2);
        return $arr2;
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