<?php echo $header; ?>

    <!-- start main -->
    <div class="container">
        <div class="row">
            <main class="main-text-page">
                <div class="col-md-3 pad-none-left">
                    <aside>
                        <?php echo $column_right; ?>
                    </aside>
                </div>
                <div class="col-md-9 pad-none-right">
                    <article class="page-404">
                        <h3 class="black-title"><?php echo $heading_title; ?></h3>
                        <p><?php echo $text_error; ?></p>
                        <a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a>
                    </article>
                </div>
            </main>
        </div>
    </div>
    <!-- end main -->
    
<?php echo $footer; ?>