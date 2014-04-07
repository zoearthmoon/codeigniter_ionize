<section class="content-header">
    <div style="float:right;">
    <a class="btn btn-primary z0-add" href="<?php echo sayLink::say('menu/create')?>">
        <i class="icon-pencil"></i><?php echo lang('add_new_menu')?>
    </a>
    </div>
    <?php echo sayPathLink::show();?>
</section>
<section class="content">
<div id="maincolumn">
    <iframe src="<?php echo site_url().'/../filemanager/dialog.php';?>" width="100%" height="500px">
    </iframe>
</div>
</section>