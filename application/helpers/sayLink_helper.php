<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class sayLink
{
    public static function show($type='',$options=array())
    {
        $baseUrl = base_url().Settings::get_lang('current').'/'.config_item('admin_url').'/';
        switch ($type)
        {
            case "logout": 
                $url = $baseUrl.'auth/logout';
                break;
            case "lang":
                $url = base_url().$options['lang'].'/'.config_item('admin_url').'/';
                break;
        }
        return $url;
    }
    
    public static function say($url='')
    {
        $baseUrl = base_url().Settings::get_lang('current').'/'.config_item('admin_url').'/';
        if (substr($url,0,1) == '/')
        {
            $url = substr($url,1);
        }
        if (strpos(' '.$url,config_item('admin_url').'/'))
        {
            $url = str_replace(config_item('admin_url').'/', '', $url);
        }
        return $baseUrl.$url;
    }
    
}