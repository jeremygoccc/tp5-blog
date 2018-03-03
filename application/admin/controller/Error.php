<?php
namespace app\admin\controller;
use think\Controller;

class Error extends Controller {

    public function index() {
        $this->redirect('index/index/index');
    }

    public function _empty() {
        $this->redirect('index/index/index');
    }

}

 ?>