    <!-- start footer -->
    <div class="container box-footer">
        <div class="row">
            <div class="col-md-12">
                <footer class="footer">
                    <ul class="list-catogories-footer">
                        <li><a href="<?php echo $novelties; ?>">Новинки</a></li>
                        <li><a href="<?php echo $special; ?>">Распродажа</a></li>
                        <li><a href="<?php echo $guarantees; ?>">Наши гарантии</a></li>
                        <li><a href="<?php echo $refund; ?>">Обмен и возврат</a></li>
                        <li><a href="<?php echo $about; ?>">О магазине</a></li>
                        <li><a href="<?php echo $catalog; ?>">Каталог</a></li>
                        <li><a href="<?php echo $payment_delivery; ?>">Оплата и доставка</a></li>
                        <li><a href="<?php echo $wholesalers; ?>">Оптовикам</a></li>
                        <li><a href="<?php echo $news; ?>">Скидки и акции</a></li>
                        <li><a href="<?php echo $posts; ?>">Статьи, мастер-классы</a></li>
                        <li><a href="<?php echo $contact; ?>">Контакты</a></li>
                        <li><a href="<?php echo $testimonial; ?>">Отзывы</a></li>
                    </ul>

                    <p>Контакты: <i class="fa fa-phone" aria-hidden="true"></i><a href="tel: <?php echo $telephone; ?>"><?php echo $telephone; ?></a>, <a href="tel:<?php echo $fax; ?>"><?php echo $fax; ?></a> <i class="fa fa-envelope" aria-hidden="true"></i><a href="email:<?php echo $email; ?>"><?php echo $email; ?></a><i class="fa fa-skype" aria-hidden="true"></i><a href="skype:<?php echo $skype; ?>"><?php echo $skype; ?></a><img class="payment" src="catalog/view/theme/busina/images/payment.jpg" alt=""></p>

                    <address>
                      <?php echo $comment; ?>
                    </address>
                    <ul class="social-list">
                        <li><a href="<?php echo $google; ?>"></a></li>
                        <li><a href="<?php echo $in; ?>"></a></li>
                        <li><a href="<?php echo $vk; ?>"></a></li>
                        <li><a href="<?php echo $fb; ?>"></a></li>
                    </ul>
                    <p class="make-in"><a href="http://mkvadrat.com/">Сайт разработан в <img src="catalog/view/theme/busina/images/m2.jpg" alt=""></a></p>
                    <div class="footer-line"></div>
                </footer>
            </div>
        </div>
    </div>

    <!-- end footer -->

<script>
$(function () {                                      
    $('.top-menu li a').each(function () {             
        var location = window.location.href; 
        var link = this.href;                
        if(location == link) {               
            $(this).addClass('active-menu');  
        }
    });
});

$(function () {                                      
    $('.main-menu li a').each(function () {             
        var location = window.location.href; 
        var link = this.href;                
        if(location == link) {               
            $(this).addClass('active-main');  
        }
    });
});
</script>



<script type="text/javascript">
    $(document).ready(function() {
        $(".fancybox").fancybox();
    });
</script>


<script type="text/javascript" src="catalog/view/theme/busina/js/common.js"></script>

</body>
</html>