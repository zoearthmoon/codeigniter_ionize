<div class="row">
    <div class="col-sm-3 col-md-offset-10">
        <a class="btn btn-primary z0-add" href="<?php echo sayLink::say('menu/create')?>">
            <i class="icon-pencil"></i><?php echo lang('add_new_menu')?>
	    </a>
    </div>
</div>

<div class="box-body">
<div id="maincolumn">
	<!-- Sortable UL -->
	<ul id="menuContainer" class="sortable">
    <?php foreach($menus as $menu) :?>
		<?php $name = $menu['name']; $id = $menu['id_menu']; $title = $menu['title']; ?>
        <div id="menu_<?php echo $id; ?>" data-id="<?php echo $id; ?>" class="alert alert-success alert-dismissable">
            <i class="fa fa-check"></i>
            <form id="formMenu<?php echo $id; ?>" action="<?php echo admin_url(); ?>menu/update" name="formMenu<?php echo $id; ?>" method="post" data-id="<?php echo $id; ?>">
            <input type="hidden" name="id_menu" value="<?php echo $menu['id_menu'];?>">
			<?php if($id > 2 && Authority::can('delete', 'admin/menu')) :?>
			    <button data-id="<?php echo $id; ?>" aria-hidden="true" data-dismiss="alert" class="close" type="button" title="<?php echo lang('ionize_button_delete'); ?>" >×</button>
			<?php endif ;?>
			
			<!-- Internal ID -->
			<div class="form-group">
			    <label><?php echo lang('ionize_label_internal_id'); ?></label>
				<p><?php echo $id; ?></p>
			</div>
			
			<!-- Name -->
			<div class="form-group">
			    <label><?php echo lang('ionize_label_name'); ?></label>
				<?php if($id < 3) :?>
					<input type="text" disabled="disabled" value="<?php echo $name; ?>"  class="inputtext" />
				<?php endif ;?>
				<input type="<?php if($id < 3) :?>hidden<?php else :?>text<?php endif ;?>" name="name" id="name_<?php echo $id; ?>" class="inputtext" value="<?php echo $name; ?>"/>
			</div>
			
			<!-- Title -->
			<div class="form-group">
			    <label><?php echo lang('ionize_label_title'); ?></label>
				<input name="title" id="title_<?php echo $id; ?>" class="inputtext" type="text" value="<?php echo $title; ?>"/>
			</div>
			
			<!-- Authority -->
			
			<?php if(Authority::can('access', 'admin/menu/permissions/backend')) :?>
				<?php if ( ! empty($menu['backend_roles_resources'])): ?>
					<div class="form-group">
						<label><?php echo lang('ionize_label_can_see_backend'); ?></label>
						<p>
							<?php foreach($menu['backend_roles_resources'] as $id_role => $role_resources): ?>
							<div class="form-group">
                                <label>
                                    <input <?php echo (@$role_resources['rules'][0]['permission'] ? 'checked':'')?> type="checkbox" name="backend_rule[<?php echo $id_role; ?>][]" value="backend/menu/<?php echo $id; ?>" id="backend_rule[<?php echo $id_role; ?>][]backend/menu/<?php echo $id; ?>" class="mr5">
                                    <?php echo $role_resources['resources'][0]['title'];?>
                                </label>
                            </div>
							<?php endforeach;?>
						</p>
					</div>
				<?php endif;?>
			<?php endif ;?>
            
			<?php if ( Authority::can('edit', 'admin/menu')) :?>
				<button type="submit" class="btn btn-success yes right btnSaveMenu" data-id="<?php echo $id; ?>">
					<?php echo lang('ionize_button_save'); ?>
				</button>
			<?php endif ;?>
            </form>
        </div>
	<?php endforeach ;?>
	</ul>
</div>
</div>