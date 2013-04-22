<?php

class Home_Controller extends Base_Controller
{

    private $contactService;
    private $fileService;

    public function __construct()
    {
        parent::__construct();
        $this->contactService = new ContactService();
        $this->fileService = new FileService();
    }

    public function action_index()
    {
        $files = $this->fileService->getFiles();
        $topFiles = $this->fileService->getTopFiles();

        return View::make('home.index')->with('topFiles', $topFiles)->with('files', $files);
    }


    public function action_register()
    {
        $url = Input::get('url');
        return View::make('home.register')->with('url', $url);
    }

    public function action_post_register()
    {
        $url = Input::get('url');
        $name = Input::get('name');
        $email = Input::get('email');
        $mobile = Input::get('mobile');
        $company = Input::get('company');

        //todo: pending validation

        $contact = $this->contactService->register($name, $email, $mobile, $company);

        if (empty($contact)) {
            //if contact is not saved, redirect again to register page
            return Redirect::to_action("home@register");
        }


        Session::put('id', $contact->id);
        return Redirect::to($url);

        return View::make('home.register')->with('url', $url);
    }
}