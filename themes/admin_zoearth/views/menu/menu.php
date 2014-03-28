<section class="content-header">
    <?php echo sayPathLink::show();?>
</section>
<section class="content">
<form name="menuForm" id="menuForm" method="post" action="<?php echo admin_url(); ?>menu/save">

	<!-- Name -->
	<dl class="small">
		<dt>
			<label for="name"><?php echo lang('ionize_label_name'); ?></label>
		</dt>
		<dd>
			<input id="name" name="name" class="inputtext w140" type="text" value=""/><br />
		</dd>
	</dl>

	<!-- Title  -->
	<dl class="small">
		<dt>
			<label for="title"><?php echo lang('ionize_label_title'); ?></label>
		</dt>
		<dd>
			<input id="title" name="title" class="inputtext w140" type="text" value="" />
		</dd>
	</dl>
    <div class="buttons">
        <button type="submit" class="btn btn-default"><?php echo lang('ionize_button_save_close'); ?></button>
    </div>
</form>
</section>