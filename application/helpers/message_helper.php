<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class message
{
    static $message = array();
    public static function show()
    {
        //'message_type' => $this->message_type,
        //'message' => $this->message,
        //'update' => $this->update,
        //'callback' => $this->callback
        $html = '';
        foreach (self::$message as $v)
        {
            $html .= $v['message_type'].':'.$v['message'].'<br>';
        }
        if ($html != '')
        {
            $html = '<div class="alert">'.
                    '<button type="button" class="close" data-dismiss="alert">&times;</button>'.$html.'</div>';
        }
        return $html;
    }
    
}