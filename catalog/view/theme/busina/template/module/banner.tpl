<!--<div id="banner<?php echo $module; ?>" class="owl-carousel">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php } ?>
</div>-->
<script type="text/javascript"><!--
/*$('#banner<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 3000,
	singleItem: true,
	navigation: false,
	pagination: false,
	transitionStyle: 'fade'
});*/
--></script>

   <div class="container">
        <div class="row">
            <main class="main-index">
							<div class="col-md-9 pad-none-right">
									<div class="slider">
											<div class="owl-carousel owl-theme">
													<div><img src="catalog/view/theme/busina/images/slide-1.jpg" alt=""></div>
													<div><img src="catalog/view/theme/busina/images/slide-1.jpg" alt=""></div>
													<div><img src="catalog/view/theme/busina/images/slide-1.jpg" alt=""></div>
											</div>
									</div>

									<div class="banner">
											<div class="enter-shop">
													<a href="#"><span>КОНКУРС</span>«ФЕТРЯНКА»</a>
											</div>
											<img src="catalog/view/theme/busina/images/banner.jpg" alt="">
									</div>
							</div>
            </main>
        </div>
    </div>
	 
<script>
$(document).ready(function(){
	$('.owl-carousel').owlCarousel({
		items : 1,
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