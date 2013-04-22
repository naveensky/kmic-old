<?php
/**
 * Created by JetBrains PhpStorm.
 * User: jai-balaji
 * Date: 4/21/13
 * Time: 4:02 PM
 * To change this template use File | Settings | File Templates.
 */

class ContactService
{
    public function register($name, $email, $mobile, $company)
    {
        $contact = new Contact();
        $contact->name = $name;
        $contact->email = $email;
        $contact->company = $company;
        $contact->phone= $mobile;

        $contact->save();

        return $contact;
    }
}