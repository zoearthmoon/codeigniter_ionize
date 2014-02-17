<?php
/**
 * @zoearth
 */

class Page extends Base_Controller
{
	public function index()
	{
		// Init the Page TagManager
		//TagManager_Page::init();
		
		$this->load->database();

		$data['articles'] = $this->db->select()->from('article')->get();

		// Included view loading
		$this->template['content'] = $this->load->view('page_home', $data, true);
		
		print_r($this->template);
		// Template view
		//Theme::output('template', $this->template);
	}
}