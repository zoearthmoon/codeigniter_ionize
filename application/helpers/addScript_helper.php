<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class addScript
{
    public static function validate($selector='')
    {
        $output = '';
        $output .= '
            $(document).ready(function() {
            	jQuery.validator.messages.required   = "'.lang('validate_required').'";
            	jQuery.validator.messages.remote     = "'.lang('validate_remote').'";
            	jQuery.validator.messages.email      = "'.lang('validate_email').'";
            	jQuery.validator.messages.url        = "'.lang('validate_url').'";
            	jQuery.validator.messages.date       = "'.lang('validate_date').'";
            	jQuery.validator.messages.dateISO    = "'.lang('validate_dateISO').'";
            	jQuery.validator.messages.number     = "'.lang('validate_number').'";
            	jQuery.validator.messages.digits     = "'.lang('validate_digits').'";
            	jQuery.validator.messages.creditcard = "'.lang('validate_creditcard').'";
            	jQuery.validator.messages.equalTo    = "'.lang('validate_equalTo').'";
            	jQuery.validator.messages.maxlength  = "'.lang('validate_maxlength').'";
            	jQuery.validator.messages.minlength  = "'.lang('validate_minlength').'";
            	jQuery.validator.messages.rangelength= "'.lang('validate_rangelength').'";
            	jQuery.validator.messages.range      = "'.lang('validate_range').'";
            	jQuery.validator.messages.max        = "'.lang('validate_max').'";
            	jQuery.validator.messages.min        = "'.lang('validate_min').'";
            });';
        if ($selector != '')
        {
            $output .= '
            $(document).ready(function() {
                $("'.$selector.'").validate();
            });';
            return $output;
        }
    }
}