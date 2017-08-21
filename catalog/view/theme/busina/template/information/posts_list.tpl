<?php echo $header; ?>

    <!-- start main -->
    <div class="container">
        <div class="row">
            <main class="main-akcii">
                <div class="col-md-3 pad-none-left">
                    <aside>
										<?php echo $column_right; ?>
                    </aside>
                </div>
                <div class="col-md-6">
								<?php if($all_posts) { ?>
								<?php foreach ($all_posts as $posts) { ?>
								<article>
									<div id="info"></div>
									
									<h2 class="title-section"><?php echo $posts['title']; ?></h2>
									<p class="end-date-promotion">Добавлено: <time><?php echo $posts['date_added']; ?></time></p>
									<img class="text-photo" src="<?php echo $posts['image']; ?>" alt="">
									<p><?php echo $posts['description']; ?>
									<a class="more-info" href="<?php echo $posts['view']; ?>">Подробнее</a></p>
								</article>
								<?php } ?>
								<?php }else{ ?>
								<div class="product-empty">Статей в разделе не найдено.</div>
								<?php } ?>
								
								<?php if ($pagination) { ?>
								<div class="paggination-block">
									<ul class="paggination-list">
										<?php echo $pagination; ?>
									</ul>
									<p>Страницы:</p>
								</div>
								<?php } ?>
                </div>
				
								<?php echo $content_top; ?>
            </main>
        </div>
    </div>
    <!-- end main -->
		
<?php echo $footer; ?> 