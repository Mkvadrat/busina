<div class="col-md-3 pad-none-right">
    <aside>
        <section>
            <p class="title-section">Горячие Новинки</p>
            <ul class="list-products-by">
                <?php foreach ($products as $product) { ?>
                <li>
                    <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="photo-product" />
                    <p class="product-name"><?php echo $product['name']; ?>
                    <?php if ($product['price']) { ?>
                      <?php if (!$product['special']) { ?>
                      <b class="price-product"><?php echo $product['price']; ?></b></p>
                      <?php } else { ?>
                      <b class="price-product"><?php echo $product['special']; ?><sup><strike><?php echo $product['price']; ?></strike></sup></b></p>
                      <?php } ?>
                    <?php } ?>
                    <a href="<?php echo $product['href']; ?>">Подробнее</a>
                    <a class="add-to-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');">Купить</a>
                </li>
                <?php } ?>
            </ul>
        </section>
    </aside>
</div>
