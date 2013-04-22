<?php
/**
 * Created by JetBrains PhpStorm.
 * User: jai-balaji
 * Date: 4/21/13
 * Time: 2:25 PM
 * To change this template use File | Settings | File Templates.
 */

class File_Controller extends Base_Controller
{

    private $fileService;

    public function __construct()
    {
        parent::__construct();
        $this->fileService = new FileService();
    }

    public function action_view($id)
    {
        $file = $this->fileService->getFile($id);

        if (empty($file))
            return Response::error('404');

        return View::make('file.view')->with('file', $file);
    }


    public function action_download($id)
    {
        $u_id = Session::get('id');
        if (empty($u_id))
            return Redirect::to("home/register?url=file/download/$id");

        return View::make('file.download')->with('id', $id);
    }

    public function action_get($id)
    {
        $u_id = Session::get('id');
        if (empty($u_id))
            return Redirect::to("home/register?url=file/get/$id");

        //get file corresponding to the id
        $file = $this->fileService->getFile($id);

        //if file is empty, return page not found
        if (empty($file))
            return Response::error('404');

        $path = path('public') . '/files/' . $file->path;

        //start download
        return Response::download($path);

    }
}