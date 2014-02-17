<?php
/**
 * @zoearth
 */

class Page extends Base_Controller
{
	public function index()
	{
		//Init the Page TagManager
		TagManager_Page::init();
	}
}