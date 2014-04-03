<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class headerLink
{
    public static function show()
    {
        $menus = array();
        $pmenus = array();
        $p = 0;
        
        //ionize_menu_content
        //$pmenus[$p]['name']  = lang('ionize_menu_content');
        //$pmenus[$p]['icon']  = 'fa-bar-chart-o';
        //$pmenus[$p]['menus'] = array(
        //        'ionize_menu_menu',
                //'ionize_menu_page',
                //'ionize_menu_articles',
                //'ionize_menu_categories',
                //'ionize_menu_tags',
                //'ionize_menu_translation',
                //'ionize_menu_medialist',
                //'ionize_menu_media_manager',
                //'ionize_menu_types',
                //'ionize_menu_content_elements',
                //'ionize_menu_extend_fields',
        //);
        //$p++;
        
        $menuKey = 'ionize_menu_menu';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'menu';
        $menus[$menuKey]['auth']       = 'admin/menu';
        $menus[$menuKey]['href']       = 'menu';
        $menus[$menuKey]['title']      = lang('ionize_menu_menu');
        
        $menuKey = 'ionize_menu_page';
        $menus[$menuKey]['action']     = 'create';
        $menus[$menuKey]['controller'] = 'page';
        $menus[$menuKey]['auth']       = 'admin/page';
        $menus[$menuKey]['href']       = 'page/create/0';
        $menus[$menuKey]['title']      = lang('ionize_menu_page');

        $menuKey = 'ionize_menu_articles';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'article';
        $menus[$menuKey]['auth']       = 'admin/article';
        $menus[$menuKey]['href']       = 'article/articles';
        $menus[$menuKey]['title']      = lang('ionize_menu_articles');

        $menuKey = 'ionize_menu_categories';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'category';
        $menus[$menuKey]['auth']       = 'admin/article/category';
        $menus[$menuKey]['href']       = 'category';
        $menus[$menuKey]['title']      = lang('ionize_menu_categories');
        
        $menuKey = 'ionize_menu_tags';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'tag';
        $menus[$menuKey]['auth']       = 'admin/article/tag';
        $menus[$menuKey]['href']       = 'tag';
        $menus[$menuKey]['title']      = lang('ionize_menu_tags');
        
        $menuKey = 'ionize_menu_translation';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'translations';
        $menus[$menuKey]['auth']       = 'admin/translations';
        $menus[$menuKey]['href']       = 'translations';
        $menus[$menuKey]['title']      = lang('ionize_menu_translation');
        
        $menuKey = 'ionize_menu_medialist';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'medialist';
        $menus[$menuKey]['auth']       = 'admin/medialist';
        $menus[$menuKey]['href']       = 'medialist';
        $menus[$menuKey]['title']      = lang('ionize_menu_medialist');

        $menuKey = 'ionize_menu_zoe_media_manager';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'zoeFileManager';
        $menus[$menuKey]['auth']       = 'admin/zoe-file-manager';
        $menus[$menuKey]['href']       = 'zoearth-file-manager';
        $menus[$menuKey]['title']      = lang('ionize_menu_media_manager');
        
        $menuKey = 'ionize_menu_media_manager';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'media';
        $menus[$menuKey]['auth']       = 'admin/media';
        $menus[$menuKey]['href']       = 'media/get_media_manager';
        $menus[$menuKey]['title']      = lang('ionize_menu_media_manager');
        
        $menuKey = 'ionize_menu_types';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'article';
        $menus[$menuKey]['auth']       = 'admin/article/type';
        $menus[$menuKey]['href']       = 'article_type/index';
        $menus[$menuKey]['title']      = lang('ionize_menu_types');
        
        $menuKey = 'ionize_menu_content_elements';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'element';
        $menus[$menuKey]['auth']       = 'admin/element';
        $menus[$menuKey]['href']       = 'element_definition/index';
        $menus[$menuKey]['title']      = lang('ionize_menu_content_elements');
        
        $menuKey = 'ionize_menu_extend_fields';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'extend';
        $menus[$menuKey]['auth']       = 'admin/extend';
        $menus[$menuKey]['href']       = 'extend_field/index';
        $menus[$menuKey]['title']      = lang('ionize_menu_extend_fields');
        
        //ionize_menu_modules
        //$pmenus[$p]['name']  = lang('ionize_menu_modules');
        //$pmenus[$p]['icon']  = 'fa-bars';
        //$pmenus[$p]['menus'] = array(
        //        'ionize_menu_modules_admin',
        //        );
        //$p++;
        
        $menuKey = 'ionize_menu_modules_admin';
        $menus[$menuKey]['action']     = 'install';
        $menus[$menuKey]['controller'] = 'modules';
        $menus[$menuKey]['auth']       = 'admin/modules';
        $menus[$menuKey]['href']       = 'modules';
        $menus[$menuKey]['title']      = lang('ionize_menu_modules_admin');
        
        //ionize_menu_tools
        //$pmenus[$p]['name']  = lang('ionize_menu_tools');
        //$pmenus[$p]['icon']  = 'fa-flag';
        //$pmenus[$p]['menus'] = array(
                //'google_analytics',
        //        'ionize_menu_system_check',
        //    );
        //$p++;
        
        $menuKey = 'google_analytics';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'tools';
        $menus[$menuKey]['auth']       = 'admin/tools/google_analytics';
        $menus[$menuKey]['href']       = 'https://www.google.com/analytics/web/';
        $menus[$menuKey]['title']      = lang('google_analytics');
        
        $menuKey = 'ionize_menu_system_check';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'tools';
        $menus[$menuKey]['auth']       = 'admin/tools/system';
        $menus[$menuKey]['href']       = 'system_check';
        $menus[$menuKey]['title']      = lang('ionize_menu_system_check');        
        
        //ionize_menu_settings
        $pmenus[$p]['name']  = lang('ionize_menu_settings');
        $pmenus[$p]['icon']  = 'fa-gavel';
        $pmenus[$p]['menus'] = array(
                'ionize_menu_menu',
                //'ionize_menu_media_manager',
                'ionize_menu_zoe_media_manager',
                'ionize_menu_ionize_settings',
                //'ionize_menu_languages',
                'ionize_menu_users',
                //'ionize_menu_theme',
                //'ionize_menu_site_settings',
                //'ionize_menu_site_settings_technical',
            );
        $p++;
        
        $menuKey = 'ionize_menu_ionize_settings';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'setting';
        $menus[$menuKey]['auth']       = 'admin/setting/ionize';
        $menus[$menuKey]['href']       = 'setting/ionize';
        $menus[$menuKey]['title']      = lang('ionize_menu_ionize_settings');        

        $menuKey = 'ionize_menu_languages';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'setting';
        $menus[$menuKey]['auth']       = 'admin/setting/languages';
        $menus[$menuKey]['href']       = 'lang';
        $menus[$menuKey]['title']      = lang('ionize_menu_languages');
        
        $menuKey = 'ionize_menu_users';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'user';
        $menus[$menuKey]['auth']       = 'admin/user';
        $menus[$menuKey]['href']       = 'user';
        $menus[$menuKey]['title']      = lang('ionize_menu_users');
        
        $menuKey = 'ionize_menu_theme';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'setting';
        $menus[$menuKey]['auth']       = 'admin/setting/themes';
        $menus[$menuKey]['href']       = 'setting/themes';
        $menus[$menuKey]['title']      = lang('ionize_menu_theme');

        $menuKey = 'ionize_menu_site_settings';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'setting';
        $menus[$menuKey]['auth']       = 'admin/setting/website';
        $menus[$menuKey]['href']       = 'setting';
        $menus[$menuKey]['title']      = lang('ionize_menu_site_settings');
        
        $menuKey = 'ionize_menu_site_settings_technical';
        $menus[$menuKey]['action']     = 'access';
        $menus[$menuKey]['controller'] = 'setting';
        $menus[$menuKey]['auth']       = 'admin/setting/website';
        $menus[$menuKey]['href']       = 'setting/technical';
        $menus[$menuKey]['title']      = lang('ionize_menu_site_settings_technical');        
        
        //ionize_menu_help 
        //$pmenus[$p]['name']  = lang('ionize_menu_help');
        //$pmenus[$p]['icon']  = 'fa-info';
        //$pmenus[$p]['menus'] = array(
        //        'ionize_menu_about',
        //    );
        //$p++;
        
        $menuKey = 'ionize_menu_about';
        $menus[$menuKey]['action']     = '';
        $menus[$menuKey]['controller'] = '';
        $menus[$menuKey]['href']       = 'about';
        $menus[$menuKey]['title']      = lang('ionize_menu_about');

        // if(Authority::can('access', 'admin/menu'))
        //echo lang('ionize_title_menu');
        
        $ci =  &get_instance();
        $nowController = $ci->uri->segment(2);
        
        $output = array();
        foreach ($pmenus as $key=>$v)
        {
            $output[$key]['title'] = $v['name'];
            $output[$key]['icon'] = $v['icon'];
            //$output[$key]['menus']
            $haveActive = FALSE;
            if (count($v['menus']) > 0 )
            {
                foreach ($v['menus'] as $mk)
                {
                    //if(Authority::can($menus[$mk]['action'], $menus[$mk]['controller']))
                    if(Authority::can('', $menus[$mk]['controller']))
                    {
                        $output[$key]['menus'][$mk] = $menus[$mk];
                        //$output[$key]['menus'][$mk]['href'] = $output[$key]['menus'][$mk]['href']; 
                        $output[$key]['menus'][$mk]['href'] = $output[$key]['menus'][$mk]['controller'];
                        if ($nowController == $output[$key]['menus'][$mk]['controller'])
                        {
                            $output[$key]['menus'][$mk]['active'] = TRUE;
                            $haveActive = TRUE;
                        }
                        else
                        {
                            $output[$key]['menus'][$mk]['active'] = FALSE;
                        }
                    }
                }
            }
            
            $output[$key]['active'] = $haveActive;
            
            if (!(is_array($output[$key]['menus']) && count($output[$key]['menus']) > 0 ))
            {
                unset($output[$key]);
            }
        }
        return $output;
    }
}