<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<title><?php echo lang('ionize_administration') . ' | ' . (Settings::get('site_title') ? Settings::get('site_title') : ''); ?></title>
<meta http-equiv="imagetoolbar" content="no" />
<link rel="shortcut icon" href="<?php echo theme_url(); ?>images/favicon.ico" type="image/x-icon" />

<script src="<?php echo theme_url(); ?>bootstrap/js/jquery-2.1.0.min.js"></script>
<link rel="stylesheet" href="<?php echo theme_url(); ?>bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo theme_url(); ?>bootstrap/css/dashboard.css">
<link rel="stylesheet" href="<?php echo theme_url(); ?>bootstrap/css/bootstrap-theme.min.css">
<script src="<?php echo theme_url(); ?>bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top"
        role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle"
                    data-toggle="collapse"
                    data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span> <span
                        class="icon-bar"></span> <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="ja"><?php echo Settings::get('site_title')?></a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <?php foreach (headerLink::show() as $pmenus):?>
                    <li>
                        <a href="javacript:void(0)"><?php echo $pmenus['title'];?></a>
                        <?php if (is_array($pmenus['menus']) && count($pmenus['menus']) > 0 ):?>
                        <ul>
                            <?php foreach ($pmenus['menus'] as $menus):?>
                            <li>
                                <a href="<?php echo $menus['href']?>"><?php echo $menus['title'];?></a>
                            </li>
                            <?php endforeach;?>
                        </ul>
                        <?php endif;?>
                    </li>
                    <?php endforeach;?>
                </ul>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3 col-md-2 sidebar">
                <ul class="nav nav-sidebar">
                    <li class="active"><a href="#">Overview</a></li>
                    <li><a href="#">Reports</a></li>
                    <li><a href="#">Analytics</a></li>
                    <li><a href="#">Export</a></li>
                </ul>
            </div>
            <div
                class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <h1 class="page-header">Dashboard</h1>
                <div class="main-content"></div>
            </div>
        </div>
    </div>
</body>
</html>