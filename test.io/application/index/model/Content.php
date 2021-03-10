<?php

namespace app\index\model;

use think\Model;

class Content extends Model
{
    //
    protected $autoWriteTimestamp = 'datetime';
    protected $createTime = 'create_time';
    protected $updateTime = 'update_time';
}
