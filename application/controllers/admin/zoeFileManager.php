<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Zoearth
 */

class ZoeFileManager extends MY_admin
{

	public function __construct()
	{
		parent::__construct();

		// Models
        $this->load->model(
            array(
                'media_model',
                'extend_field_model'
            ), '', TRUE);

		// Librairies
		$this->load->library('medias');
		$this->load->library('image_lib');

	}


	public function index()
	{
		$this->output('zoe-file-manager/index');
	}


}
