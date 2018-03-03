<?php
namespace app\admin\validate;

use think\Validate;

class User extends Validate {

    // 验证器规则
    protected $rule = [
        "user"    => "require|length:6,12",
        "pass"    => "require|length:6,12|confirm:repass",
        "title"   => "require",
        "content" => "require",
    ];

    // 验证器提示信息
    protected $message = [
        "user.require"    => "Please enter the User Name",
        "user.length"     => "The length of User Name between 6 and 12",
        "pass.require"    => "Please enter the Password",
        "pass.length"     => "The length of Password between 6 and 12",
        "pass.confirm"    => "Entered passwords differ",
        "title.require"   => "Please enter the Title",
        "content.require" => "Please enter the Content"
    ];

    // 定义场景
    protected $scene = [
        'addUser' => [
            'user',
            'pass' => 'require|length:6,12'
        ],
        'login' => [
            'user',
            'pass' => 'require|length:6,12'
        ],
        'sign'  => [
            'user',
            'pass',
        ],
        'article' => [
            "title"   => "require",
            "content" => "require",
        ]
    ];

}


 ?>