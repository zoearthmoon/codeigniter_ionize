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
            <li class="active" ><a href="#tabv" data-toggle="tab" ><?php echo lang('ionize_title_views_list'); ?> : <?php echo Settings::get('theme'); ?></a></li>
            <li><a href="#tabp" data-toggle="tab" ><?php echo lang('ionize_title_options'); ?></a></li>
        </ul>
        <div class="clear"></div>
    </div>

    <div class="tab-content">
    <!-- Tabs content blocks -->

    
    <div class="tab-pane active" id="tabv" >
        <form name="viewsForm" id="viewsForm" method="post" action="<?php echo admin_url(); ?>setting/save_views">
        <table class="table table-bordered" >
            <thead>
                <tr>
                    <th axis="string"><?php echo lang('ionize_label_view_filename'); ?></th>
                    <th axis="string"><?php echo lang('ionize_label_view_folder'); ?></th>
                    <th><?php echo lang('ionize_label_view_name'); ?></th>
                    <th><?php echo lang('ionize_label_view_type'); ?></th>
                </tr>
            </thead>
            <tbody>
            <?php foreach($files as $file) :?>
                <?php $rel = $file->path . $file->name; ?>
                <tr>
                    <td><a class="viewEdit" data-id="<?php echo $rel; ?>"><?php echo $file->name; ?></a></td>
                    <td><?php echo $file->path; ?> </td>
                    <td>
                        <input type="text" class="inputtext w160" name="viewdefinition_<?php echo $rel; ?>" value="<?php echo $file->definition; ?>" />
                    </td>
                    <td>
                        <select class="select" name="viewtype_<?php echo $rel; ?>">
                            <option value=""><?php echo lang('ionize_select_no_type'); ?></option>
                            <option <?php if($file->type == 'page') :?> selected="selected" <?php endif ;?> value="page">Page</option>
                            <option <?php if($file->type == 'article') :?> selected="selected" <?php endif ;?> value="article">Article</option>
                        </select>
                    </td>
                </tr>
            <?php endforeach ;?>
            </tbody>
        </table>
        <div class="box-footer">
            <button class="btn btn-primary" type="submit"><?php echo lang('ionize_button_save')?></button>
        </div>
        </form>
    </div>
    
    <div class="tab-pane fade" id="tabp" >
        <form name="themesForm" id="themesForm" method="post" action="<?php echo admin_url(); ?>setting/save_themes">
        <div class="form-group">
            <label><?php echo lang('ionize_label_theme'); ?></label>
            <select class="form-control" name="theme">
                <?php foreach($themes as $theme): ?>
                <option value="<?php echo $theme; ?>" <?php if($theme == Settings::get('theme') ): ?>selected="selected"<?php endif; ?>><?php echo $theme; ?></option>
                <?php endforeach ;?>
            </select>
        </div>
        <div class="form-group">
            <label><?php echo lang('ionize_label_theme_admin'); ?></label>
            <select class="form-control" name="theme_admin">
                <?php foreach($themes_admin as $theme) :?>
                <option value="<?php echo $theme; ?>" <?php if($theme == Settings::get('theme_admin') ) :?>selected="selected"<?php endif; ?>><?php echo $theme; ?></option>
                <?php endforeach ;?>
            </select>
        </div>
        <div class="box-footer">
            <button class="btn btn-primary" type="submit"><?php echo lang('ionize_button_save')?></button>
        </div>
        </form>
    </div>
    </div>
</div>
</section>