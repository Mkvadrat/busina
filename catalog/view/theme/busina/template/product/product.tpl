<?php echo $header; ?>
  
    <!-- start main -->
    <div class="container">
        <div class="row">
            <main class="main-object">
                <div class="col-md-3">
                    <aside>
                        <?php echo $column_right; ?>
                    </aside>
                </div>
                <div class="col-md-9">
                    <article>
                        <h1 class="title-section info"><?php echo $heading_title; ?></h1>
                        
                        <div class="short-description">
                            <?php if ($images) { ?>
                            <div class="zoom-image-block">
                                <div class="zoom-wrapper">
                                    <div class="zoom-left">
                                        <?php $i = 0; ?>
                                        <?php foreach($images as $image) { ?>
                                            <?php $i++; ?>
                                            <?php if($i > 1) break; ?>
                                            <img class="zoom-img" id="product-image" src="<?php echo $image['popup']; ?>" data-zoom-image="<?php echo $image['popup']; ?>" width="411"/>
                                        <?php } ?>
                                        
                                        <div id="gallery_01">
                                            <?php foreach ($images as $image) { ?>
                                                <a href="#" class="elevatezoom-gallery active" data-update="" data-image="<?php echo $image['popup']; ?>" data-zoom-image="<?php echo $image['popup']; ?>">
                                                    <img src="<?php echo $image['popup']; ?>" width="100"/>
                                                </a>
                                            <?php }?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php }else{ ?>
                            <div class="zoom-image-block">
                                <div class="zoom-wrapper">
                                    <div class="zoom-left">
                                        <img class="zoom-img" id="thumb" src="<?php echo $thumb; ?>" data-zoom-image="<?php echo $thumb; ?>" width="411"/>
                                    </div>
                                </div>
                            </div>
                            <?php }?>
                            <p class="title-list">Артикул: </p>
                            <p class="vendor-code"><?php echo $model; ?></p>
                            <?php if ($options) { ?>

                            <p class="title-list">Опции: </p>
                            <ul>
                                <?php foreach ($options as $option) { ?>
                                    <li><?php echo $option['name'] . ': ' . $option['value']; ?></li>
                                <?php } ?>
                            </ul>
                            <?php } ?>
                            
                            <p class="title-list">Количество:</p>
                            <ul>
                                <li><?php echo $stock; ?></li>
                            </ul>
                            
                            <?php if ($price) { ?>
                            <?php if (!$special) { ?>
                            <p class="price"><b>Цена: <?php echo $price; ?></b></p>
                            <?php } else { ?>
                            <p class="price"><b>Цена: <?php echo $special; ?><sup><strike><?php echo $price; ?></sup></strike></b></p>
                            <?php } ?>
                            <?php } ?>
                            
                            <div class="add-form form-group" id="product">
                                <label for="quantity">Кол-во:</label>
                                <input type="text" name="quantity" value="<?php echo $minimum; ?>">
                                <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                <input type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" value="Добавить в корзину">
                            </div>
                            <br>
                            <?php if ($minimum > 1) { ?>
                                <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
                            <?php } ?>
                        </div>

                        <div class="tab-block">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#panel1">Описание</a></li>
                                <li><a data-toggle="tab" href="#panel2">Отзывы</a></li>
                            </ul>

                            <div class="tab-content">
                                <div id="panel1" class="tab-pane fade in active">
                                    <?php echo $description; ?>
                                </div>
                                <div id="panel2" class="tab-pane fade">
                                    <?php if ($review_status) { ?>
                                        <form class="form-horizontal" id="form-review">
                                        <div id="review"></div>
                                        <h2><?php echo $text_write; ?></h2>
                                        <?php if ($review_guest) { ?>
                                        <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                                        <input type="text" name="name" value="" id="input-name" class="form-control" />
                                        <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                                        <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                                        <?php echo $text_note; ?>
                                        <br/>
                                        <label class="control-label"><?php echo $entry_rating; ?></label>
                                        <br/>
                                        <?php echo $entry_bad; ?>
                                        <input type="radio" name="rating" value="1" />
                                        &nbsp;
                                        <input type="radio" name="rating" value="2" />
                                        &nbsp;
                                        <input type="radio" name="rating" value="3" />
                                        &nbsp;
                                        <input type="radio" name="rating" value="4" />
                                        &nbsp;
                                        <input type="radio" name="rating" value="5" />
                                        &nbsp;<?php echo $entry_good; ?>
                                        <?php echo $captcha; ?>
                                        <br/>
                                        <input type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" value="<?php echo $button_continue; ?>">
                                        <?php } else { ?>
                                        <?php echo $text_login; ?>
                                        <?php } ?>
                                        </form>
                                    <?php } ?> 
                                </div>
                            </div>
                        </div>
                        
                        <?php if ($products) { ?>
                        <h2 class="title-section">с этим товаром покупают</h2>

                        <p>С этим товаром покумаю разные бусинки, инструменты, и другое</p>

                        <div class="owl-carousel owl-carousel-brands owl-theme">
                            <?php foreach ($products as $product) { ?>
                            <div class="owl-brands">
                                <img class="photo-product" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
                                <p class="product-name"><?php echo $product['name']; ?>
                                <?php if ($product['price']) { ?>
                                <?php if (!$product['special']) { ?>
                                <b class="price-product"><?php echo $product['price']; ?></b></p>
                                <?php } else { ?>
                                <b class="price-product"><?php echo $product['special']; ?><sup><strike><?php echo $product['price']; ?></sup></strike></b></p>
                                <?php } ?>
                                <?php } ?>
                                <a href="<?php echo $product['href']; ?>">Подробнее</a>
                                <a class="add-to-cart" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">Купить</a>
                            </div>
                            <?php } ?>
                        </div>
                        <?php } ?>
                    </article>
                </div>
            </main>
        </div>
    </div>
    <!-- end main -->
    
<script type="text/javascript">
$(document).ready(function () {
    $("#thumb").ezPlus({
      cursor: 'pointer',
      galleryActiveClass: "active",
      imageCrossfade: true,
      loadingIcon: "https://www.elevateweb.co.uk/spinner.gif"
    });
    
    $("#thumb").bind("click", function (e) {
      var ez = $('#thumb').data('ezPlus');
      ez.closeAll(); //NEW: This function force hides the lens, tint and window
      $.fancyboxPlus(ez.getGalleryList());
        return false;
    });
});
</script>

<script type="text/javascript">
$(document).ready(function () {
    $("#product-image").ezPlus({
      gallery: 'gallery_01',
      cursor: 'pointer',
      galleryActiveClass: "active",
      imageCrossfade: true,
      loadingIcon: "https://www.elevateweb.co.uk/spinner.gif"
    });
    
    $("#product-image").bind("click", function (e) {
      var ez = $('#product-image').data('ezPlus');
      ez.closeAll(); //NEW: This function force hides the lens, tint and window
      $.fancyboxPlus(ez.getGalleryList());
        return false;
    });
});
</script>

<script>
$(document).ready(function(){
  $('.owl-carousel-brands').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    autoplay:true,
    smartSpeed:2000,
    autoplayTimeout:5000,
    dots:false,
    stopOnHover:true,
    navigationText:["",""],
    rewindNav:true,
    pagination:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:3
        }
    }
  });
});
</script>

<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>

<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['success']) {
				$('.info').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart').html('<span>Корзина:</span> <em>' + json['total'] + '</em>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>

<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});
//--></script>

<?php echo $footer; ?>
