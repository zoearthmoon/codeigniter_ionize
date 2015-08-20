<section class="content-header">
    <div style="float:right;">
    <ul class="nav nav-tabs">
        <?php if(Authority::can('','setting')):?>
        <li <?php echo isActive::_('setting','') ? 'class="active"':'';?>>
            <a href="<?php echo sayLink::say('setting')?>" ><?php echo lang('ionize_menu_site_settings')?></a>
        </li>
        <?php endif;?>
        <?php if(Authority::can('technical','setting')):?>
        <li <?php echo isActive::_('setting','technical') ? 'class="active"':'';?>>
            <a href="<?php echo sayLink::say('setting/technical')?>" ><?php echo lang('ionize_menu_site_settings_technical')?></a>
        </li>
        <?php endif;?>
        <?php if(Authority::can('themes','setting')):?>
        <li <?php echo isActive::_('setting','themes') ? 'class="active"':'';?>>
            <a href="<?php echo sayLink::say('setting/themes')?>" ><?php echo lang('ionize_menu_theme')?></a>
        </li>
        <?php endif;?>
        <?php if(Authority::can('ionize','setting')):?>
        <li <?php echo isActive::_('setting','ionize') ? 'class="active"':'';?>>
            <a href="<?php echo sayLink::say('setting/ionize')?>" ><?php echo lang('admin_ionize_settings')?></a>
        </li>
        <?php endif;?>
    </ul>
    </div>
    <?php echo sayPathLink::show();?>
</section>
<section class="content">

<div id="maincolumn">
    <!-- Tabs -->
    <div id="webSettingsTab" class="mainTabs">
        <ul class="nav nav-tabs">
            <li class="active" ><a href="#tab1" data-toggle="tab" ><?php echo lang('ionize_title_dashboard'); ?></a></li>
            <li><a href="#tab2" data-toggle="tab" ><?php echo lang('ionize_title_backend_ui'); ?></a></li>
            <li><a href="#tab3" data-toggle="tab" ><?php echo lang('ionize_title_visual_help'); ?></a></li>
            <li><a href="#tab4" data-toggle="tab" ><?php echo lang('ionize_title_admin_panel_languages'); ?></a></li>
        </ul>
        <div class="clear"></div>
    </div>

    <form name="viewsForm" id="viewsForm" method="post" action="<?php echo admin_url(); ?>setting/save_ionize">
    <div class="tab-content">
    <!-- Tabs content blocks -->

    
    <div class="tab-pane active" id="tab1" >
        <div class="form-group">
            <label><?php echo lang('ionize_label_display_dashboard_shortcuts'); ?></label>
            <input class="form-control" type="checkbox" name="display_dashboard_shortcuts" id="display_dashboard_shortcuts" <?php if (Settings::get('display_dashboard_shortcuts') == '1'):?> checked="checked" <?php endif;?> value="1" />
        </div>
        <div class="form-group">
            <label><?php echo lang('ionize_label_display_dashboard_modules'); ?></label>
            <input class="form-control" type="checkbox" name="display_dashboard_modules" id="display_dashboard_modules" <?php if (Settings::get('display_dashboard_modules') == '1'):?> checked="checked" <?php endif;?> value="1" />
        </div>
        <div class="form-group">
            <label><?php echo lang('ionize_label_display_dashboard_users'); ?></label>
            <input class="form-control" type="checkbox" name="display_dashboard_users" id="display_dashboard_users" <?php if (Settings::get('display_dashboard_users') == '1'):?> checked="checked" <?php endif;?> value="1" />
        </div>
        <div class="form-group">
            <label><?php echo lang('ionize_label_display_dashboard_content'); ?></label>
            <input class="form-control" type="checkbox" name="display_dashboard_content" id="display_dashboard_content" <?php if (Settings::get('display_dashboard_content') == '1'):?> checked="checked" <?php endif;?> value="1" />
        </div>
    </div>
    
    <div class="tab-pane fade" id="tab2" >
        <div class="form-group">
            <label><?php echo lang('ionize_label_backend_ui_style'); ?></label>
            <select class="form-control" name="backend_ui_style">
                <?php foreach($styles as $style): ?>
                    <option value="<?php echo $style; ?>" <?php if($style == Settings::get('backend_ui_style') ): ?>selected="selected"<?php endif; ?>><?php echo ucfirst($style); ?></option>
                <?php endforeach ;?>
            </select>
        </div>
    </div>
    <div class="tab-pane fade" id="tab3" >
        <div class="form-group">
            <label><?php echo lang('ionize_label_display_connected_label'); ?></label>
            <input class="form-control" type="checkbox" name="display_connected_label" id="display_connected_label" <?php if (Settings::get('display_connected_label') == '1'):?> checked="checked" <?php endif;?> value="1" />
        </div>
        <div class="form-group">
            <label><?php echo lang('ionize_label_enable_backend_tracker'); ?></label>
            <input class="form-control" type="checkbox" name="enable_backend_tracker" id="enable_backend_tracker" <?php if (Settings::get('enable_backend_tracker') == '1'):?> checked="checked" <?php endif;?> value="1" />
        </div>
    </div>
    <div class="tab-pane fade" id="tab4" >
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th></th>
                    <th class="center">Lang</th>
                    <th class="center">Displayed</th>
                    <th class="center">Default</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach(Settings::get('admin_languages') as $lang) :?>
                <tr>
                    <td class="center">
                        <?php if (file_exists(Theme::get_theme_path().'images/world_flags/flag_'.$lang.'.gif')) :?>
                            <img src="<?php echo theme_url(); ?>images/world_flags/flag_<?php echo $lang; ?>.gif" alt="<?php echo $lang; ?>" class="mt2" /></td>
                        <?php else: ?>
                            ?
                        <?php endif; ?>
                    <td class="center">
                        <label for="display_lang_<?php echo $lang; ?>"><?php echo $lang; ?></label>
                    </td>
                    <td class="center">
                        <input <?php if(in_array($lang, $displayed_admin_languages)) :?>checked="checked" <?php endif ;?>id="display_lang_<?php echo $lang; ?>" class="inputcheckbox" name="displayed_admin_languages[]" type="checkbox" value="<?php echo $lang; ?>" />
                    </td>
                    <td class="center">
                        <input <?php if(Settings::get('default_admin_lang') == $lang) :?>checked="checked" <?php endif ;?>id="default_admin_lang_<?php echo $lang; ?>" class="inputcheckbox " name="default_admin_lang" type="radio" value="<?php echo $lang; ?>" />
                    </td>
                </tr>
                <?php endforeach ;?>
            </tbody>
        </table>
    </div>
    <input type="hidden" name="date_format" value="%Y.%m.%d" />
    </div>
    <div class="box-footer">
        <button class="btn btn-primary" type="submit"><?php echo lang('ionize_button_save')?></button>
    </div>
    </form>
</div>
</section>