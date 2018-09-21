<?php
class ControllerProductCatalog extends Controller {
	public function index() {
		$this->load->language('product/catalog');
		
		$this->load->model('catalog/category');
		
		$this->load->model('tool/image');
		
		$data['categories'] = array();
		
		$this->document->setTitle($this->language->get('heading_title'));

		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			if ($category['image']) {
				$image = $this->model_tool_image->resize($category['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
			} else {
				$cat_image = $this->model_catalog_category->getImageCategory($category['category_id']);
				
				if(!empty($cat_image)){
					$image = $this->model_tool_image->resize($cat_image, $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				}else{
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				}
			}
			// Level 1
			$data['categories'][] = array(
				'name'     => $category['name'],
				'image'	   => $image,
				'column'   => $category['column'] ? $category['column'] : 1,
				'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
			);
		}
		
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/catalog.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/product/catalog.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/product/catalog.tpl', $data));
		}
		
	}
}
