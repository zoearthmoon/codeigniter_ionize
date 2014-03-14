<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class sayLink
{
    public static function show($type='')
    {
        $baseUrl = base_url().Settings::get_lang('current').'/'.config_item('admin_url').'/';
        switch ($type)
        {
            case "logout": 
                $url = $baseUrl.'auth/logout';
                break;
        }
        
        return $url;
    }
}