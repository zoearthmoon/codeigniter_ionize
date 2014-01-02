
<?php if ( Authority::can('create', 'admin/element')) :?>

	<div class="toolbox divider">
		<input type="button" class="toolbar-button plus" id="addElementButton" value="<?php echo lang('ionize_label_create_element'); ?>" />
	</div>

	<script type="text/javascript">

		$('addElementButton').addEvent('click', function(e)
		{
			ION.JSON('element_definition/create');
		});

	</script>

<?php endif;?>
