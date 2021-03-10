<?php
namespace app\index\controller;

use app\index\model\Content;
use think\Controller;

class Index extends Controller
{
    public function add()
    {
        if (request()->isPost()) {
            $data = input('post.');
            $content = new Content;
            $res = $content->save($data);
        }
        return view();
    }

    public function getOne($id)
    {
        if (request()->isAjax()) {
            $data = db('content')->where('id', input('id'))->find();
            return json($data);
        }

        $req = request()->param('id');
        return view('', compact('req'));
    }
    public function getAll()
    {
        $data = db('content')->select();
        return view('', compact('data'));
    }
    public function delete()
    {
        db('content')->where('id', input('id'))->delete();
        return redirect('/');
    }
}
