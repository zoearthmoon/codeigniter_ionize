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
			<?php foreach(Settings::get_languages() as $l) :?>
				<li<?php if($l['def'] == '1') :?>  class="active"<?php endif ;?>>
				    <a href="#tab<?php echo $l['lang']?>" data-toggle="tab" >
				        <span>
				            <?php echo ucfirst($l['name']); ?>
				        </span>
			        </a>
			    </li>
			<?php endforeach ;?>
			<li id="ga_settings"><a href="#tabga" data-toggle="tab" ><?php echo lang('ionize_title_google_analytics'); ?></a></li>
			<!-- <li id="seo_settings"><a href="#tabseo" data-toggle="tab" ><?php echo lang('ionize_title_seo'); ?></a></li> -->
		</ul>
		<div class="clear"></div>
	</div>

    <div class="tab-content">
	<!-- Tabs content blocks -->
	<?php foreach(Settings::get_languages() as $i=>$language) :?>
		<div class="tab-pane <?php echo ($i==0 ? 'active':'')?>" role="form" id="tab<?php echo $language['lang']?>" >
            <div class="form-group">
                <label><?php echo lang('ionize_label_site_title'); ?></label>
                <input name="site_title_<?php echo $language['lang']; ?>" id="site_title_<?php echo $language['lang']; ?>" class="form-control col-md-4" type="text" value="<?php echo Settings::get('site_title', $language['lang']); ?>"/>
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_meta_description'); ?></label>
                <textarea name="meta_description_<?php echo $language['lang']; ?>" id="meta_description_<?php echo $language['lang']; ?>" class="form-control"><?php echo Settings::get('meta_description', $language['lang']); ?></textarea>
            </div>
            <div class="form-group">
                <label><?php echo lang('ionize_label_meta_keywords'); ?></label>
                <textarea name="meta_keywords_<?php echo $language['lang']; ?>" id="meta_keywords_<?php echo $language['lang']; ?>" class="form-control"><?php echo Settings::get('meta_keywords', $language['lang']); ?></textarea>
            </div>
		</div>
	<?php endforeach ;?>

    <!-- Google Analytics -->
	<div class="tab-pane fade" id="tabga" >
        <div class="form-group">
            <label><?php echo lang('ionize_label_google_analytics_id'); ?></label>
            <input type="text" name="google_analytics_id" id="google_analytics_id" class="form-control" value="<?php echo Settings::get('google_analytics_id'); ?>" />
        </div>
        <div class="form-group">
            <label><?php echo lang('ionize_label_google_analytics_tracking_code'); ?></label>
            <textarea name="google_analytics" id="google_analytics" class="form-control"><?php echo htmlentities(stripslashes(Settings::get('google_analytics')), ENT_QUOTES, 'utf-8'); ?></textarea>
        </div>
        <div class="form-group">
            <label><?php echo lang('ionize_label_google_analytics_profile_id'); ?></label>
			<input type="text" name="google_analytics_profile_id" id="google_analytics_profile_id" class="form-control" value="<?php echo Settings::get('google_analytics_profile_id'); ?>" />
        </div>
        <div class="form-group">
            <label><?php echo lang('ionize_label_google_analytics_url'); ?></label>
            <input type="text" name="google_analytics_url" id="google_analytics_url" class="form-control" value="<?php echo Settings::get('google_analytics_url'); ?>" />
        </div>
        <div class="form-group">
            <label><?php echo lang('ionize_label_google_analytics_email'); ?></label>
            <input type="text" name="google_analytics_email" id="google_analytics_email" class="form-control" value="<?php echo Settings::get('google_analytics_email'); ?>" />
        </div>
        <div class="form-group">
            <label><?php echo lang('ionize_label_google_analytics_password'); ?></label>
            <input type="password" name="google_analytics_password" id="google_analytics_password" class="form-control" value="<?php echo Settings::get('google_analytics_password'); ?>" />
        </div>
        <div class="checkbox">
            <label class="">
                <input class="inputcheckbox" type="checkbox" name="dashboard_google" id="dashboard_google" <?php if (Settings::get('dashboard_google') == '1'):?> checked="checked" <?php endif;?> value="1" /><?php echo lang('ionize_label_display_google'); ?>
            </label>
        </div>
	</div>
	
	<!-- SEO --><!-- 20140411 zoearth 好像用不到 -->
    </div>
</div>
<div class="box-footer">
    <button class="btn btn-primary" type="submit"><?php echo lang('ionize_button_save')?></button>
</div>
</form>
</section>