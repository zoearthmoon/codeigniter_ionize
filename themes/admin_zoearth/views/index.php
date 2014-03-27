<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<title><?php echo lang('ionize_administration') . ' | ' . (Settings::get('site_title') ? Settings::get('site_title') : ''); ?></title>
<meta http-equiv="imagetoolbar" content="no" />
<link rel="shortcut icon" href="<?php echo theme_url(); ?>images/favicon.ico" type="image/x-icon" />
<?php echo addCss::show();?>
</head>
<body class="skin-black">
    <header class="header">
    <a href="index.html" class="logo"><?php echo Settings::get('site_title');?></a>
    <nav class="navbar navbar-static-top" role="navigation">
    <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </a>
    <div class="navbar-right">
        <ul class="nav navbar-nav">
                <li class="dropdown messages-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="<?php echo theme_url(); ?>images/world_flags/flag_<?php echo Settings::get_lang(); ?>.gif" />
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <ul class="menu">
            					<?php foreach(Settings::get_online_languages() as $lang) :?>
                                    <li>
                                        <a href="<?php echo sayLink::show('lang',array('lang'=>$lang['lang'])); ?>">
                                            <div class="pull-left">
                                                <img src="<?php echo theme_url(); ?>images/world_flags/flag_<?php echo $lang['lang']; ?>.gif" />
                                            </div>
                                            <h4>
                                                <?php echo $lang['name']; ?>
                                            </h4>
                                        </a>
                                    </li>
            					<?php endforeach ;?>
                            </ul>
                        </li>
                    </ul>
                </li>
            <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="glyphicon glyphicon-user"></i>
                    <span><?php echo User()->get('screen_name');?><i class="caret"></i></span>
                </a>
                <ul class="dropdown-menu">
                    <li class="user-header bg-light-blue">
                        <img src="<?php echo User()->get('userImg');?>" class="img-circle" alt="User Image" />
                        <p>
                            <?php echo User()->get('screen_name');?> - <?php echo User()->get('role_name'); ?>
                        </p>
                    </li>
                    <li class="user-footer">
                        <div class="pull-right">
                            <a href="<?php echo sayLink::show('logout')?>" class="btn btn-default btn-flat" ><?php echo lang('ionize_logout'); ?></a>
                        </div>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
    </nav>
        </header>
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <aside class="left-side sidebar-offcanvas">
                <section class="sidebar">
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="<?php echo User()->get('userImg');?>" class="img-circle" alt="User Image" />
                        </div>
                        <div class="pull-left info">
                            <p><?php echo lang('admin_hello')?>, <?php echo User()->get('screen_name');?></p>
                        </div>
                    </div>
                    <ul class="sidebar-menu">
                        <?php foreach (headerLink::show() as $pmenus):?>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa <?php echo $pmenus['icon'];?>"></i>
                                <span><?php echo $pmenus['title'];?></span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <?php if (is_array($pmenus['menus']) && count($pmenus['menus']) > 0 ):?>
                            <ul class="treeview-menu" >
                                <?php foreach ($pmenus['menus'] as $menus):?>
                                <li>
                                    <a href="<?php echo sayLink::say($menus['href'])?>">
                                        <i class="fa fa-angle-double-right"></i>
                                        <?php echo $menus['title'];?>
                                    </a>
                                </li>
                                <?php endforeach;?>
                            </ul>
                            <?php endif;?>
                        </li>
                        <?php endforeach;?>
                    </ul>
                </section>
            </aside>


            <aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Dashboard
                        <small>Control panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Dashboard</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                <?php echo message::show();?>
                <?php $this->load->view($view,$data);?>
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->
    </body>
</html>