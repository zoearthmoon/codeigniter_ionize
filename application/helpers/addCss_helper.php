<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class addCss
{
    public static function show()
    {
        $addCss = array();
        $addJs  = array();
        
        //bootstrap 3.0.2
        $addCss[] = 'css/bootstrap.min.css';
        //font Awesome
        $addCss[] = 'css/font-awesome.min.css';
        //Ionicons
        $addCss[] = 'css/ionicons.min.css';
        //Morris chart
        $addCss[] = 'css/morris/morris.css';
        //jvectormap
        $addCss[] = 'css/jvectormap/jquery-jvectormap-1.2.2.css';
        //fullCalendar
        $addCss[] = 'css/fullcalendar/fullcalendar.css';
        //Daterange picker
        $addCss[] = 'css/daterangepicker/daterangepicker-bs3.css';
        //bootstrap wysihtml5 - text editor
        $addCss[] = 'css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css';
        //Theme style
        $addCss[] = 'css/AdminLTE.css';
        
        //jQuery 2.0.2
        $addJs[] = 'http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js';
        //jQuery UI 1.10.3
        $addJs[] = 'js/jquery-ui-1.10.3.min.js';
        //Bootstrap
        $addJs[] = 'js/bootstrap.min.js';
        //Morris.js charts
        $addJs[] = '//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js';
        $addJs[] = 'js/plugins/morris/morris.min.js';
        //Sparkline
        $addJs[] = 'js/plugins/sparkline/jquery.sparkline.min.js';
        //jvectormap
        $addJs[] = 'js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js';
        $addJs[] = 'js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js';
        //fullCalendar
        $addJs[] = 'js/plugins/fullcalendar/fullcalendar.min.js';
        //jQuery Knob Chart
        $addJs[] = 'js/plugins/jqueryKnob/jquery.knob.js';
        //daterangepicker
        $addJs[] = 'js/plugins/daterangepicker/daterangepicker.js';
        //Bootstrap WYSIHTML5
        $addJs[] = 'js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js';
        //iCheck
        $addJs[] = 'js/plugins/iCheck/icheck.min.js';
        
        //AdminLTE App
        $addJs[] = 'js/AdminLTE/app.js';
        
        //AdminLTE dashboard demo (This is only for demo purposes)
        $addJs[] = 'js/AdminLTE/dashboard.js';
        
        $html = '';
        
        foreach ($addCss as $css)
        {
            $html .= '<link href="'.theme_url().'adminLTE/'.$css.'" rel="stylesheet" type="text/css" />'."\n";
        }
        foreach ($addJs as $js)
        {
            $html .= '<script src="'.theme_url().'adminLTE/'.$js.'" type="text/javascript"></script>'."\n";
        }        
        return $html;
    }
}