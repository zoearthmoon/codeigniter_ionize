<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class isActive
{
    public static function _($controllerName='',$action='')
    {
        $action = $action ? $action:'index';
        $ci =  &get_instance();
        $nowController = $ci->uri->segment(2);
        $nowAction     = $ci->uri->segment(3);
        if (trim($controllerName) == trim($nowController) && trim($action) == trim($nowAction) )
        {
            return TRUE;
        }
        return FALSE;
    }
}