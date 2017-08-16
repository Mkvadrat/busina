    <!-- start main -->
    <div class="container">
        <div class="row">
            <main class="main-index">
                <div class="col-md-3 pad-none-left">
                    <aside>
						<ul class="list-text-items">
							<?php foreach ($categories as $category) { ?>
							<?php if ($category['category_id'] == $category_id) { ?>
							<li><a href="<?php echo $category['href']; ?>" class="list-group-item active"><?php echo $category['name']; ?></a></li>
							<?php if ($category['children']) { ?>
							<?php foreach ($category['children'] as $child) { ?>
							<?php if ($child['category_id'] == $child_id) { ?>
							<li><a href="<?php echo $child['href']; ?>" class="list-group-item active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a></li>
							<?php } else { ?>
							<li><a href="<?php echo $child['href']; ?>" class="list-group-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a></li>
							<?php } ?>
							<?php } ?>
							<?php } ?>
							<?php } else { ?>
							<li><a href="<?php echo $category['href']; ?>" class="list-group-item"><?php echo $category['name']; ?></a></li>
							<?php } ?>
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
		
<script>
$(document).ready(function(){
		$('#banner<?php echo $module; ?>').owlCarousel({
			items: 1,
			loop:true,
			margin:10,
			nav:false,
			autoplay:true,
			smartSpeed:2000,
			autoplayTimeout:5000,
			dots:true,
			stopOnHover:true,
			navigationText:["",""],
			rewindNav:true,
			pagination:true,
		});
});
</script>