<?php
namespace app\index\controller;

class Upload
{
    public function index()
    {
        $file = request()->file();
        $file = $file['upload'];
        // 移动到框架应用根目录/uploads/ 目录下
        $info = $file->move('./uploads');
        if ($info) {
            $basedir = request()->root(true);
            $url = $basedir
            . DIRECTORY_SEPARATOR . 'uploads'
            . DIRECTORY_SEPARATOR . $info->getSaveName();
            // 输出 42a79759f284b767dfcb2a0197904287.jpg
            $data = ['fileName' => $info->getFilename(), 'url' => $url, 'uploaded' => 1];
            return json($data);
        } else {
            // 上传失败获取错误信息
            echo $file->getError();
        }
    }

    public function remove()
    {
        dump(input('src'));
        $src = '.' . input('src');
        if (unlink($src)) {
            return json(['success' => true]);
        }
    }

}
