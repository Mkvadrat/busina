<?php
class ControllerCommonFooter extends Controller {
	public function index() {
		$this->load->language('common/footer');

		$data['scripts'] = $this->document->getScripts('footer');

		$data['text_information'] = $this->language->get('text_information');
		$data['text_service'] = $this->language->get('text_service');
		$data['text_extra'] = $this->language->get('text_extra');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_sitemap'] = $this->language->get('text_sitemap');
		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$data['text_voucher'] = $this->language->get('text_voucher');
		$data['text_affiliate'] = $this->language->get('text_affiliate');
		$data['text_special'] = $this->language->get('text_special');
		$data['text_account'] = $this->language->get('text_account');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_wishlist'] = $this->language->get('text_wishlist');
		$data['text_newsletter'] = $this->language->get('text_newsletter');

		$this->load->model('catalog/information');

		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		$data['contact'] = $this->url->link('information/contact');
		$data['return'] = $this->url->link('account/return/add', '', 'SSL');
		$data['sitemap'] = $this->url->link('information/sitemap');
		$data['manufacturer'] = $this->url->link('product/manufacturer');
		$data['voucher'] = $this->url->link('account/voucher', '', 'SSL');
		$data['affiliate'] = $this->url->link('affiliate/account', '', 'SSL');
		$data['special'] = $this->url->link('product/special');
		$data['account'] = $this->url->link('account/account', '', 'SSL');
		$data['order'] = $this->url->link('account/order', '', 'SSL');
		$data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');
		$data['yandex_metrika'] = $this->config->get('ya_metrika_code') ? html_entity_decode($this->config->get('ya_metrika_code'), ENT_QUOTES, 'UTF-8') : '';
		$data['ya_metrika_active'] = $this->config->get('ya_metrika_active') ? true : false;
		$data['telephone'] = $this->config->get('config_telephone');
		$data['fax'] = $this->config->get('config_fax');
		$data['email'] = $this->config->get('config_email');
		$data['skype'] = $this->config->get('config_skype');
		$data['novelties'] = $this->url->link('product/category&path=59', '', 'SSL');
		$data['special'] = $this->url->link('product/category&path=61', '', 'SSL');
		$data['guarantees'] = $this->url->link('information/information&information_id=7', '', 'SSL');
		$data['refund'] = $this->url->link('information/information&information_id=8', '', 'SSL');
		$data['about'] = $this->url->link('information/information&information_id=9', '', 'SSL');
		$data['catalog'] = $this->url->link('product/category&path=60', '', 'SSL');
		$data['payment_delivery'] = $this->url->link('information/information&information_id=10', '', 'SSL');
		$data['wholesalers'] = $this->url->link('information/information&information_id=11', '', 'SSL');
		$data['news'] = $this->url->link('information/news', '', 'SSL');
		$data['posts'] = $this->url->link('information/posts', '', 'SSL');
		$data['testimonial'] = $this->url->link('testimonial/testimonial', '', 'SSL');
		$data['comment'] = html_entity_decode( $this->config->get('config_comment'), ENT_QUOTES, 'UTF-8');
		$data['google'] = $this->config->get('config_google');
		$data['in'] = $this->config->get('config_in');
		$data['vk'] = $this->config->get('config_vk');
		$data['fb'] = $this->config->get('config_fb');

		$data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));

		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];
			} else {
				$ip = '';
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];
			} else {
				$referer = '';
			}

			$this->model_tool_online->addOnline($ip, $this->customer->getId(), $url, $referer);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/footer.tpl', $data);
		} else {
			return $this->load->view('default/template/common/footer.tpl', $data);
		}
	}
}
