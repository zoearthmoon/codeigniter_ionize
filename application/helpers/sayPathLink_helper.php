<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class sayPathLink
{
    public static function show()
    {
        
        $ci =  &get_instance();
        $controller = $ci->uri->segment(2);
        $action = $ci->uri->segment(3);
        
        if ($controller == '')
        {
            return '';
        }
        if ($action == '')
        {
            $action = 'index';
        }
        $con = actionList::showArray();
        $html = '';
        $html .= '<h1>';
        $html .= @$con[$controller]['title'];
        $html .= '<small>'.@$con[$controller]['action'][$action].'</small>';
        $html .= '</h1>';
        //$html .= '<ol class="breadcrumb">';
        //$html .= '<li><a href="'.base_url().'"><i class="fa fa-dashboard"></i> Home</a></li>';
        //$html .= '<li class="active">'.@$con[$controller]['title'].'</li>';
        //$html .= '</ol>';
        
        return $html;
    }
}