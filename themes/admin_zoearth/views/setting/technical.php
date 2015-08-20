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
<form action="<?php echo admin_url(); ?>setting/save_technical_settings" method="post" >
<div id="maincolumn">
    <!-- Tabs -->
    <div id="webSettingsTab" class="mainTabs">
        <ul class="nav nav-tabs">
            <li class="active" >
                <a href="#tabDatabase" data-toggle="tab" >
                <?php echo lang('ionize_title_database'); ?></a>
            </li>
            <li >
                <a href="#tabEmail" data-toggle="tab" >
                <?php echo lang('ionize_title_mail_send'); ?></a>
            </li>
        </ul>
        <div class="clear"></div>
    </div>
    
    <div class="tab-content">
        <div class="tab-pane active" id="tabDatabase" >
            <div class="form-group">
                <label><a class="btn btn-primary" href="<?php echo admin_url(); ?>setting/backup_database"><?php echo lang('ionize_label_db_backup'); ?></a></label>
                
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_db_driver'); ?></label>
                <select name="db_driver" id="db_driver" class="form-control">
                    <option <?php if ($this->db->platform() == 'mysql'):?>selected="selected"<?php endif;?>  value="mysql">MySQL</option>
                    <option <?php if ($this->db->platform() == 'mysqli'):?>selected="selected"<?php endif;?>  value="mysqli">MySQLi</option>
                    <option <?php if ($this->db->platform() == 'mssql'):?>selected="selected"<?php endif;?>  value="mssql">MS SQL</option>
                    <option <?php if ($this->db->platform() == 'postgre'):?>selected="selected"<?php endif;?>  value="postgre">Postgre SQL</option>
                    <option <?php if ($this->db->platform() == 'oci8'):?>selected="selected"<?php endif;?>  value="oci8">Oracle</option>
                    <option <?php if ($this->db->platform() == 'sqlite'):?>selected="selected"<?php endif;?>  value="sqlite">SQLite</option>
                    <option <?php if ($this->db->platform() == 'odbc'):?>selected="selected"<?php endif;?>  value="odbc">ODBC</option>
                </select>
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_db_host'); ?></label>
                <input id="db_host" name="db_host" class="form-control" type="text" value="<?php echo $db_host; ?>" />
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_db_name'); ?></label>
                <input id="db_name" name="db_name" class="form-control" type="text" value="<?php echo $db_name; ?>" />
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_db_user'); ?></label>
                <input id="db_user" name="db_user" class="form-control" type="text" value="<?php echo $db_user; ?>" />
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_db_pass'); ?></label>
                <input id="db_pass" name="db_pass" class="form-control" type="password" value="<?php echo $db_pass; ?>" />
            </div>
        </div>
        
        <div class="tab-pane fade" id="tabEmail" >
            <!-- Emails -->
            <?php $emails = array('contact', 'info', 'technical'); ?>
            <?php foreach($emails as $email) :?>
            <div class="form-group">
                <label><?php echo lang('ionize_label_email_'.$email); ?></label>
                <input id="email_<?php echo $email ?>" name="email_<?php echo $email ?>" class="form-control" type="text" value="<?php echo Settings::get('email_'.$email); ?>" />
            </div>
            <?php endforeach ;?>
            <legend><?php echo lang('ionize_title_email_server'); ?></legend>
            <div class="form-group">
                <label><?php echo lang('ionize_label_site_email'); ?></label>
                <input id="site_email" name="site_email" class="form-control" type="text" value="<?php echo Settings::get('site_email'); ?>" />
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_smtp_protocol'); ?></label>
                <select name="protocol" id="emailProtocol" class="form-control">
                    <option <?php if ($protocol == 'smtp'):?>selected="selected"<?php endif;?> value="smtp">SMTP</option>
                    <option <?php if ($protocol == 'mail'):?>selected="selected"<?php endif;?> value="mail">Mail</option>
                    <option <?php if ($protocol == 'sendmail'):?>selected="selected"<?php endif;?>  value="sendmail">SendMail</option>
                </select>
            </div>

            <div class="form-group">
                <label><?php echo lang('ionize_label_mailpath'); ?></label>
                <input id="mailpath" name="mailpath" type="text" class="form-control" value="<?php echo $mailpath; ?>" />
            </div>

            <div class="form-group">
                <label><?php echo lang('ionize_label_smtp_host'); ?></label>
                <input id="smtp_host" name="smtp_host" type="text" class="form-control" value="<?php echo $smtp_host; ?>" />
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_smtp_user'); ?></label>
                <input id="smtp_user" name="smtp_user" type="text" class="form-control" value="<?php echo $smtp_user; ?>" />
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_smtp_pass'); ?></label>
                <input id="smtp_pass" name="smtp_pass" type="password" class="form-control" value="<?php echo $smtp_pass; ?>" />
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_smtp_port'); ?></label>
                <input id="smtp_port" name="smtp_port" type="text" class="form-control" value="<?php echo $smtp_port; ?>" />
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_smtp_timeout'); ?></label>
                <input id="smtp_timeout" name="smtp_timeout" type="text" class="form-control" value="<?php echo $smtp_timeout; ?>" />
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_email_charset'); ?></label>
                <input id="charset" name="charset" type="text" class="form-control" value="<?php echo $charset; ?>" />
            </div>
            
            <div class="form-group">
                <label><?php echo lang('ionize_label_email_mailtype'); ?></label>
                <select name="mailtype" id="mailtype" class="form-control">
                    <option <?php if ($mailtype == 'text'):?>selected="selected"<?php endif;?> value="text">Text</option>
                    <option <?php if ($mailtype == 'html'):?>selected="selected"<?php endif;?> value="html">HTML</option>
                </select>
            </div>
        </div>
    </div>
</div>
<div class="box-footer">
    <button class="btn btn-primary" type="submit"><?php echo lang('ionize_button_save')?></button>
</div>
</form>