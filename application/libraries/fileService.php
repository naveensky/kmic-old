<?php
/**
 * Created by JetBrains PhpStorm.
 * User: jai-balaji
 * Date: 4/21/13
 * Time: 1:34 PM
 * To change this template use File | Settings | File Templates.
 */

class FileService {
    public function getFile($id){
        return FileDownload::find($id);
    }

    public function getFiles(){
        return FileDownload::all();
    }

    public function getTopFiles(){
        return FileDownload::order_by('download_count', 'desc')->take(10)->get();
    }
}