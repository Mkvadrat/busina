<?php echo $header; ?>
    
    <!-- start main -->
    <div class="container">
        <div class="row">
            <main class="main-in">
                <div class="col-md-3 pad-none-left">
                    <aside>
                      <?php echo $column_right; ?>
                    </aside>
                </div>
                <div class="col-md-9 pad-none-right" id="content">
                    <article>
                        <div class="banner">
                          <label class="control-label" for="input-search"><?php echo $entry_search; ?></label>
                          <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
                          
                          <select name="category_id" class="form-control">
                            <option value="0"><?php echo $text_category; ?></option>
                            <?php foreach ($categories as $category_1) { ?>
                            <?php if ($category_1['category_id'] == $category_id) { ?>
                            <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
                            <?php } ?>
                            <?php foreach ($category_1['children'] as $category_2) { ?>
                            <?php if ($category_2['category_id'] == $category_id) { ?>
                            <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                            <?php } ?>
                            <?php foreach ($category_2['children'] as $category_3) { ?>
                            <?php if ($category_3['category_id'] == $category_id) { ?>
                            <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                            <?php } ?>
                            <?php } ?>
                          </select>

                          <?php if ($sub_category) { ?>
                          <input type="checkbox" name="sub_category" value="1" checked="checked" />
                          <?php } else { ?>
                          <input type="checkbox" name="sub_category" value="1" />
                          <?php } ?>
                          <?php echo $text_sub_category; ?>

                          <?php if ($description) { ?>
                          <input type="checkbox" name="description" value="1" id="description" checked="checked" />
                          <?php } else { ?>
                          <input type="checkbox" name="description" value="1" id="description" />
                          <?php } ?>
                          <?php echo $entry_description; ?>
                          
                          <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="btn btn-primary" />
                        </div>
                        
                        <div id="info"></div>
                                                
                        <?php if ($products) { ?>
                        <ul class="list-products-by">
                            <?php foreach ($products as $product) { ?>
                            <li>
                                <img class="photo-product" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
                                <p class="product-name"><?php echo $product['name']; ?>
                                <?php if ($product['price']) { ?>
                                <?php if (!$product['special']) { ?>
                                <b class="price-product"><?php echo $product['price']; ?></b></p>
                                <?php } else { ?>
                                <b class="price-product"><?php echo $product['special']; ?><sup><strike><?php echo $product['price']; ?></strike></sup></b></p>
                                <?php } ?>
                                <?php } ?>
                                <a href="<?php echo $product['href']; ?>">Подробнее</a>
                                <a class="add-to-cart" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">Купить</a>
                            </li>
                            <?php } ?>
                        </ul>
                        <?php }else{ ?>
                        <div class="product-empty"><?php echo $text_empty; ?></div>
                        <?php } ?>
                    
                        <?php if (!empty($pagination)) { ?>
                        <div class="paggination-block">
                            <ul class="paggination-list">
                                <?php echo $pagination; ?>
                            </ul>
                            <p>Страницы:</p>
                        </div>
                        <?php } ?>
                        
                        <section>
                            <h1 class="black-title"><?php echo $heading_title; ?></h1>
                            <?php echo $description; ?></section>
                    </article>
                </div>
            </main>
        </div>
    </div>
    <!-- end main -->

<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>

<?php echo $footer; ?>