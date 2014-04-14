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
<form action="<?php echo admin_url(); ?>setting/save" method="post" >
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
			<li >
			    <a href="#tabSystem" data-toggle="tab" >
			    <?php echo lang('ionize_title_system'); ?></a>
		    </li>
		</ul>
		<div class="clear"></div>
	</div>
	
	<div class="tab-content">
	    <div class="tab-pane active" id="tabDatabase" >
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
                <input id="db_pass" name="db_pass" class="form-control" type="password" value="" />
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

            <div class="form-group">
                <label><?php echo lang('ionize_title_email_server'); ?></label>
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
	    
	    <div class="tab-pane fade" id="tabSystem" >
            <div class="form-group">
                <label><?php echo lang('ionize_label_environment'); ?></label>
                <?php echo ENVIRONMENT; ?>
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_title_php_version'); ?></label>
                <?php echo phpversion(); ?>
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_title_db_version'); ?></label>
                <?php echo $this->db->platform().' '.$this->db->version(); ?>
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_file_uploads'); ?></label>
				<?php if(ini_get('file_uploads') == true) :?>
					<a class="icon ok"></a>
				<?php else :?>
					<a class="icon nok"></a>
				<?php endif ;?>
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_max_upload_size'); ?></label>
                <?php echo ini_get('upload_max_filesize'); ?>
            </div>
            <div class="form-group">
                <label>&nbsp;</label>
                <a href="<?php echo base_url() . config_item('admin_url'); ?>/desktop/get/system/phpinfo" target="_blank">Complete PHP Info</a>
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_antispam_key'); ?></label>
				<input id="form_antispam_key" name="form_antispam_key" type="text" class="form-control" value="<?php echo $form_antispam_key; ?>" />
				<a class="icon left refresh ml5" id="antispamRefresh" title="<?php echo lang('ionize_label_refresh_antispam_key'); ?>"></a>
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_title_encryption_key'); ?></label>
                <textarea disabled="disabled" class="w300"><?php echo config_item('encryption_key'); ?></textarea>
            </div>
            <div class="form-group">
                <label>&nbsp;</label>
                <input id="keysSettingsFormSubmit" type="submit" class="submit" value="<?php echo lang('ionize_button_save'); ?>" />
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_help_cache_expiration'); ?></label>
				<input id="cache_expiration" name="cache_expiration" class="inputtext w60" type="text" value="<?php echo config_item('cache_expiration'); ?>" />
				<input id="submit_cache" type="submit" class="submit m0" value="<?php echo lang('ionize_button_save'); ?>" />
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_clear_cache'); ?></label>
                <input id="clear_cache" type="button" class="submit m0" value="<?php echo lang('ionize_button_clear_cache'); ?>" />
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_title_admin_url'); ?></label>
				<input id="admin_url" name="admin_url" class="inputtext w120" value="<?php echo config_item('admin_url'); ?>" /><br/>
				<p class="lite pl10"><?php echo lang('ionize_onchange_ionize_settings'); ?></p>
            </div>
            <div class="form-group">
                <label>&nbsp;</label>
                <input id="submit_admin_url" type="submit" class="submit" value="<?php echo lang('ionize_button_save'); ?>" />
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_maintenance'); ?></label>
                <input class="inputcheckbox" <?php if (config_item('maintenance') == '1'):?>checked="checked"<?php endif;?> type="checkbox" name="maintenance" id="maintenance" value="1" />
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_maintenance_ips'); ?></label>
                <span><?php echo lang('ionize_label_your_ip'); ?> : <?php echo $_SERVER['REMOTE_ADDR']; ?></span><br/>
                <textarea name="maintenance_ips" id="maintenance_ips" class="h50 w140"><?php echo (! empty($maintenance_ips)) ? $maintenance_ips : $_SERVER['REMOTE_ADDR']; ?></textarea>
            </div>
            
            <?php if (function_exists('curl_init')) : ?>
            <div class="form-group">
                <label><?php echo lang('ionize_title_maintenance_page'); ?></label>
                <div id="maintenancePageContainer"></div>
            </div>
            <?php endif ;?>
	    
	    </div>
	</div>
</div>
<div class="box-footer">
    <button class="btn btn-primary" type="submit"><?php echo lang('ionize_button_save')?></button>
</div>
</form>