<?php
namespace app\index\controller;

use think\facade\Env;

class Test
{
    public function index()
    {
        echo DIRECTORY_SEPARATOR;
        echo '<br>';
        dump(env());
        echo '<br>';

        dump(request()->root());

    }
}
