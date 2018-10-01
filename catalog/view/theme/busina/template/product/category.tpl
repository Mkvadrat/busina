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
                <div class="col-md-9 pad-none-right">
                    <article>
                        <div class="banner">
                            <div class="enter-shop">
                                <a href="<?php echo $login; ?>"><span>Войти</span>в магазин</a>
                            </div>
                            <img src="catalog/view/theme/busina/images/banner.jpg" alt="">
                        </div>
                        
                        <div id="info"></div>
                        
                        <?php if ($categories) { ?>
                        <p class="title-section">Бусины</p>
                        <ul class="list-products">
                            <?php foreach ($categories as $category) { ?>
                            <li>
                                <a href="<?php echo $category['href']; ?>">
                                    <img class="photo-product" src="<?php echo $category['image']; ?>" alt="">
                                    <p class="product-name"><?php echo $category['name']; ?></p>
                                </a>
                            </li>
                            <?php } ?>
                        </ul>
                        <?php } ?>

                        <p class="title-section">Все товары из категории</p>
                        
                        <?php if ($products) { ?>
                        <div class="col-md-3 col-xs-6">
                            <div class="form-group input-group input-group-sm">
                              <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
                              <select id="input-limit" class="form-control" onchange="location = this.value;">
                                <?php foreach ($limits as $limits) { ?>
                                <?php if ($limits['value'] == $limit) { ?>
                                <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                                <?php } else { ?>
                                <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                                <?php } ?>
                                <?php } ?>
                              </select>
                            </div>
                        </div>
                        <div class="col-md-4 col-xs-6">
                            <div class="form-group input-group input-group-sm">
                              <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
                              <select id="input-sort" class="form-control" onchange="location = this.value;">
                                <?php foreach ($sorts as $sorts) { ?>
                                <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                                <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                                <?php } else { ?>
                                <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                                <?php } ?>
                                <?php } ?>
                              </select>
                            </div>
                        </div>
                        <br>
                        <br>
                        <br>
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
                            <p>Страницы:</p>
                            <ul class="paggination-list">
                                <?php echo $pagination; ?>
                            </ul>
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
    
<?php echo $footer; ?>