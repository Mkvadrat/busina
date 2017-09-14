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
					<?php if($all_news) { ?>
					<?php foreach ($all_news as $news) { ?>
                    <article>
						<div id="info"></div>
						
                        <h2 class="title-section"><?php echo $news['title']; ?></h2>
                        <p class="end-date-promotion">Окончание: <time><?php echo $news['date_ended']; ?></time></p>
						<img class="text-photo" src="<?php echo $news['image']; ?>" alt="">
                        <p><?php echo $news['description']; ?>
						<a class="more-info" href="<?php echo $news['view']; ?>">Подробнее</a></p>
                    </article>
					<?php } ?>
					<?php }else{ ?>
					<div class="product-empty">Скидок или акций не найдено.</div>
					<?php } ?>
					
					<?php if ($pagination) { ?>
					<div class="paggination-block">
						<p>Страницы:</p>
						<ul class="paggination-list">
							<?php echo $pagination; ?>
						</ul>
					</div>
					<?php } ?>
                </div>
				
				<?php echo $content_top; ?>
            </main>
        </div>
    </div>
    <!-- end main -->
		
<?php echo $footer; ?> 