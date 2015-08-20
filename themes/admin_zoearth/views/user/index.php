<section class="content-header">
    <div style="float:right;">
    
    </div>
    <?php echo sayPathLink::show();?>
</section>
<section class="content">
<form action="<?php echo admin_url(); ?>setting/save" method="post" >
<div id="maincolumn">
    <!-- Tabs -->
    <div id="webSettingsTab" class="mainTabs">
        <ul class="nav nav-tabs">
            <li class="active"><a href="#tabgu" data-toggle="tab" ><?php echo lang('ionize_title_existing_users'); ?></a></li>
            <?php if ( Authority::can('access', 'admin/role')) :?>
                <li><a href="#tabgr" data-toggle="tab" ><?php echo lang('ionize_title_roles'); ?></a></li>
            <?php endif ;?>
        </ul>
        <div class="clear"></div>
    </div>

    <div class="tab-content">
        <div class="tab-pane fade" id="tabgu" >
            <form action="<?php echo admin_url(); ?>admin/user" method="get" >
                <select id="userRoleSelect" name="id_role" class="select">
                    <option value=""><?php echo lang('ionize_label_all_groups') ?></option>
                    <?php foreach($roles as $role) :?>
                        <option value="<?php echo $role['id_role'] ?>"><?php echo $role['role_name'] ?></option>
                    <?php endforeach ;?>
                </select>
                <input class="input-small" alt="<?php echo lang('ionize_label_email') ?>" type="text" id="filter_email" name="email" value="" placeholder="<?php echo lang('ionize_label_email') ?>" />
                <input type="text" class="input-small" id="filter_screenname" name="screen_name" value="" placeholder="<?php echo lang('ionize_label_screen_name') ?>" />
                <input type="text" class="input-small" id="filter_nb" name="nb" value="50" placeholder="<?php echo lang('ionize_label_users_per_page') ?>" />
                <button type="submit" class="btn btn-success"><?php echo lang('ionize_button_filter') ?></button >
            </form>
            <div id="userList">
                <?php if (!empty($users)) :?>
	            <table class="list" id="usersTable">
        		<thead>
        			<tr>
        				<th axis="number"><?php echo lang('ionize_label_id') ?></th>
                        <th axis="string"><?php echo lang('ionize_label_email') ?></th>
        				<th axis="string"><?php echo lang('ionize_label_username') ?></th>
        				<th axis="string"><?php echo lang('ionize_label_screen_name') ?></th>
        				<th axis="string"><?php echo lang('ionize_label_role') ?></th>
        				<th axis="string"><?php echo lang('ionize_label_join_date') ?></th>
        				<th></th>
        				<th></th>
        			</tr>
        		</thead>
		        <tbody>
    			<?php $i = 0; ?>
    			<?php foreach($users as $user) :?>
    				<tr data-id="<?php echo $user['id_user'] ?>">
    					<td><?php echo $user['id_user'] ?></td>
                        <td><?php echo $user['email'] ?></td>
    					<td><a><?php echo $user['username'] ?></a></td>
    					<td><?php echo $user['screen_name'] ?></td>
    					<td><?php echo $user['role_name'] ?></td>
    					<td>
    						<?php echo humanize_mdate($user['join_date'], Settings::get('date_format')) ?>
    					</td>
                        <td>
                            <a class="icon mail" data-email="<?php echo $user['email'] ?>"></a>
                        </td>
    					<td>
    						<?php if(User()->getId() != $user['id_user'] && Authority::can('delete', 'admin/user')) :?>
    							<a class="icon delete" data-id="<?php echo $user['id_user'] ?>"></a>
    						<?php endif; ?>
    					</td>
    				</tr>
    			<?php endforeach ;?>
		        </tbody>
	            </table>
            </div>
        </div>
        
        
        <?php if ( Authority::can('access', 'admin/role')) :?>
        <div class="tab-pane fade" id="tabgb" >
        </div>
        <?php endif ;?>
    </div>
</div>
<div class="box-footer">
    <button class="btn btn-primary" type="submit"><?php echo lang('ionize_button_save')?></button>
</div>
</form>
</section>