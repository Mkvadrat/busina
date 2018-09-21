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
                        <p class="title-section">Каталог</p>
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

                    </article>
                </div>
            </main>
        </div>
    </div>
    <!-- end main -->
    
<?php echo $footer; ?>