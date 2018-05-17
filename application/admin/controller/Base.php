<?php
namespace app\admin\controller;
use think\Controller;

class Base extends Controller {

    public function _empty() {
        $this->redirect("index/index/index");
    }

    public function _initialize() {
        $res = model("index/Category")->getDire();
        $this->assign('caDire',$res);

        if(session("?u_status")) {
            $u_status = session('u_status');
            $this->assign('u_status', $u_status);
        }

        if (cookie("?user_name") && !session("?user_name")) {
          session('user_name', cookie("user_name"));
          $this->redirect('index/Index/index');
        }
    }
}

?>