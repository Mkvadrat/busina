<?php
class ControllerModuleBusina extends Controller {
	public function index($setting) {
		static $module = 0;
		
		$this->load->language('module/busina');
		
		//Banner
		$this->load->model('design/banner');
		$this->load->model('tool/image');

		$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
		$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.transitions.css');
		$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');

		$data['banners'] = array();

		$results = $this->model_design_banner->getBanner($setting['banner_id']);

		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['banners'][] = array(
					'title' => $result['title'],
					'link'  => $result['link'],
					'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
				);
			}
		}

		$data['module'] = $module++;
		
		//Category 1
		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}

		if (isset($parts[0])) {
			$data['category_id'] = $parts[0];
		} else {
			$data['category_id'] = 0;
		}

		if (isset($parts[1])) {
			$data['child_id'] = $parts[1];
		} else {
			$data['child_id'] = 0;
		}

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$data['categories'] = array();
		
		$data['catalog'] = array();
		
		$data['main_categories'] = array();

		$all_categories = $this->model_catalog_category->getCategories(0);
		
		$catalog = $this->model_catalog_category->getCategories(60);
		
		$main_categories = $this->model_catalog_category->getCategories(60);

		foreach ($all_categories as $category) {
			if($category['category_id'] != 60){	
				$filter_data = array(
					'filter_category_id'  => $category['category_id'],
					'filter_sub_category' => true
				);
	
				$data['categories'][] = array(
					'category_id' => $category['category_id'],
					'name'        => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
					'href'        => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}
		
		foreach ($catalog as $category) {
			$filter_data = array(
				'filter_category_id'  => $category['category_id'],
				'filter_sub_category' => true
			);

			$data['catalog'][] = array(
				'category_id' => $category['category_id'],
				'name'        => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
				'href'        => $this->url->link('product/category', 'path=' . $category['category_id'])
			);
		}
		
		foreach($main_categories as $main){
			if ($main['image']) {
				$image = $this->model_tool_image->resize($main['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
			} else {
				$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
			}
			
			$data['main_categories'][] = array(
				'image'		 => $image,
				'name'        => $main['name'],
				'href'        => $this->url->link('product/category', 'path=' . $main['category_id'])
			);
		}
		
		//Html block
		$data['heading_title'] = html_entity_decode($setting['module_description'][$this->config->get('config_language_id')]['title'], ENT_QUOTES, 'UTF-8');
		$data['html'] = html_entity_decode($setting['module_description'][$this->config->get('config_language_id')]['description'], ENT_QUOTES, 'UTF-8');
		$data['add_description'] = html_entity_decode($setting['module_description'][$this->config->get('config_language_id')]['add_description'], ENT_QUOTES, 'UTF-8');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/busina.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/busina.tpl', $data);
		} else {
			return $this->load->view('default/template/module/busina.tpl', $data);
		}
	}
}