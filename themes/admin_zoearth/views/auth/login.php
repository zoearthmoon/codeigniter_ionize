<!DOCTYPE html>
<html class="bg-black">
<head>
<meta charset='utf-8' />
<title><?php echo lang('ionize_administration') . ' | ' . (Settings::get('site_title') ? Settings::get('site_title') : ''); ?></title>
<meta http-equiv="imagetoolbar" content="no" />
<link rel="shortcut icon" href="<?php echo theme_url(); ?>images/favicon.ico" type="image/x-icon" />
<?php echo addCss::show();?>
<script language="Javascript">
<?php echo addScript::validate('#login');?>
</script>
</head>
<body class="bg-black">
    <div class="form-box" id="login-box">
        <div class="header">
        <?php echo Settings::get('site_title'); ?>
		<?php if(validation_errors() OR isset($this->login_errors)):?>
			<div class="error">
				<?php echo validation_errors(); ?>
				<?php echo isset($this->login_errors) ? $this->form_validation->_error_prefix.$this->login_errors.$this->form_validation->_error_suffix : ''; ?>
			</div>
		<?php endif; ?>
        </div>
        <form id="login" action="<?php echo current_url();?>" method="post">
            <div class="body bg-gray">
                <div class="input-group">
                    <label for="exampleInputEmail1">
                        <i class="fa fa-male"></i>
                        <?php echo lang('ionize_label_username')?>
                    </label>
                    <input type="text" name="username" class="form-control required" placeholder="<?php echo lang('ionize_login_name')?>"/>
                </div>
                <div class="input-group">
                    <label for="exampleInputEmail1">
                        <i class="fa fa-key"></i>
                        <?php echo lang('ionize_login_password')?>
                    </label>
                    <input type="password" name="password" class="form-control required" placeholder="<?php echo lang('ionize_login_password')?>"/>
                </div>
            </div>
            <div class="footer">                                                               
                <button type="submit" class="btn bg-olive btn-block"><?php echo lang('ionize_login'); ?></button>
            </div>
        </form>
    </div>
</body>
</html>