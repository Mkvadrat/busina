    <!-- start main -->
    <div class="container">
        <div class="row">
            <main class="main-index">
                <div class="col-md-3 pad-none-left">
                    <aside>
						<ul class="list-text-items">
							<?php foreach ($categories as $category) { ?>
								<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
							<?php } ?>
							<?php foreach ($catalog as $category) { ?>
								<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
							<?php } ?>
						</ul>                        
                    </aside>
                </div>
                <div class="col-md-9 pad-none-right">
                    <div class="slider">
                        <div id="banner<?php echo $module; ?>" class="owl-carousel owl-theme">
							<?php foreach ($banners as $banner) { ?>
								<?php if ($banner['link']) { ?>
								<div>
									<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
								</div>
								<?php } else { ?>
								<div>
									<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
								</div>
								<?php } ?>
							<?php } ?>
                        </div>
                    </div>

                    <div class="banner">
						<?php echo $add_description; ?>
                    </div>

                    <article>
                        <section>
							<?php if($main_categories){ ?>
                            <p class="title-section">Каталог</p>

                            <ul class="list-products">
								<?php foreach($main_categories as $main){ ?>
                                <li>
                                    <a href="<?php echo $main['href']; ?>">
                                        <img class="photo-product" src="<?php echo $main['image']; ?>" alt="">
                                        <p class="product-name"><?php echo $main['name']; ?></p>
                                    </a>
                                </li>
								<?php } ?>
                            </ul>
							<?php } ?>
							
                        </section>

                        <section>
                            <h1 class="black-title"><?php echo $heading_title; ?></h1>
							<?php echo $html; ?>
                        </section>
                    </article>
                </div>
            </main>
        </div>
    </div>
    <!-- end main -->
		
<script type="text/javascript"><!--
$('#banner<?php echo $module; ?>').owlCarousel({
 items: 6,
 autoPlay: 3000,
 singleItem: true,
 navigation: false,
 pagination: false,
 dots:true,
 pagination:true,
});
--></script>