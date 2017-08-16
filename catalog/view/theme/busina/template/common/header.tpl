<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />

<!-- Bootstrap -->
<link href="catalog/view/theme/busina/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="catalog/view/theme/busina/css/reset.css">
<link rel="stylesheet" href="catalog/view/theme/busina/css/fonts.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<link rel="stylesheet" href="catalog/view/theme/busina/css/styles.css">
<link rel="stylesheet" href="catalog/view/theme/busina/css/media.css">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="catalog/view/theme/busina/js/jquery-1.9.1.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="catalog/view/theme/busina/js/bootstrap.min.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<!-- OWL-CAROUSEL -->
<script src="catalog/view/theme/busina/js/owl.carousel.min.js"></script>
<link rel="stylesheet" href="catalog/view/theme/busina/css/owl.carousel.min.css">
<link rel="stylesheet" href="catalog/view/theme/busina/css/owl.theme.default.css">

<!-- FANCYBOX -->
<link rel="stylesheet" href="catalog/view/theme/busina/js/source/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
<script type="text/javascript" src="catalog/view/theme/busina/js/source/jquery.fancybox.pack.js?v=2.1.5"></script>
<script src="catalog/view/theme/busina/js/jquery.mousewheel-3.0.6.pack.js"></script>

<link rel="stylesheet" href="catalog/view/theme/busina/js/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" type="text/css" media="screen" />
<script type="text/javascript" src="catalog/view/theme/busina/js/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
<script type="text/javascript" src="catalog/view/theme/busina/js/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>

<link rel="stylesheet" href="catalog/view/theme/busina/js/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css" media="screen" />
<script type="text/javascript" src="catalog/view/theme/busina/js/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

<!-- HTML5 for IE -->
<!--[if IE]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/busina.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
    <!-- start header -->
    <!--<header class="header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="logo">
                        <a href="<?php echo $home; ?>">
                            <?php if ($logo) { ?>
                                <h1><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></h1>
                            <?php } else { ?>
                                <h1><?php echo $name; ?></h1>
                            <?php } ?>
                        </a>
                    </div>

                    <div class="phones">
                        <p><i class="fa fa-phone" aria-hidden="true"></i><a href="tel:<?php echo $telephone; ?>"><?php echo $telephone; ?></a></p>
                        <p><a href="tel:<?php echo $fax; ?>"><?php echo $fax; ?></a></p>
                    </div>

                    <div class="mail">
                        <p><i class="fa fa-envelope" aria-hidden="true"></i><a href="email:<?php echo $email; ?>"><?php echo $email; ?></a></p>
                        <p><i class="fa fa-skype" aria-hidden="true"></i><a href="skype:<?php echo $skype; ?>"><?php echo $skype; ?></a></p>
                    </div>

                    <ul class="top-menu">
                        <li><a href="<?php echo $novelties; ?>">Новинки</a></li>
                        <li><a href="<?php echo $special; ?>">Распродажа</a></li>
                        <li><a href="<?php echo $guarantees; ?>">Наши гарантии</a></li>
                        <li><a href="<?php echo $refund; ?>">Обмен и возврат</a></li>
                        <li><a href="<?php echo $about; ?>">О магазине</a></li>
                    </ul>
                </div>

                <div class="col-md-12 pad-none">
                    <div class="block-main-menu">
                        <ul class="main-menu">
                            <li><a href="<?php echo $catalog; ?>">Каталог</a></li>
                            <li><a href="<?php echo $payment_delivery; ?>">Оплата и доставка</a></li>
                            <li><a href="<?php echo $wholesalers; ?>">Оптовикам</a></li>
                            <li><a href="<?php echo $news; ?>">Скидки и акции</a></li>
                            <li><a href="<?php echo $posts; ?>">Статьи, мастер-классы</a></li>
                            <li><a href="<?php echo $contact; ?>">Контакты</a></li>
                            <li><a href="<?php echo $testimonial; ?>">Отзывы</a></li>
                        </ul>
                    </div>
                </div>

                <div class="bottom-line-header">
                    <?php echo $search; ?>
                    
                    <div class="col-md-6">
                        <div class="personal-area-block">
                            <?php if ($logged) { ?>
                                <p>Здравствуйте <?php echo $user_name; ?>, здесь Вы можете войти в <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a> | <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></p>
                            <?php }else{ ?>
                                <p>
                                    Личный кабинет <a href="<?php echo $login; ?>">Войти</a> или <a href="<?php echo $register; ?>">Зарегистрироваться</a>
                                </p>
                            <?php } ?>
                        </div>
                    </div>
                    <?php echo $cart; ?>
                </div>
            </div>
        </div>
    </header>-->
    <!-- end header -->
    
    <!-- start header -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="logo">
                        <a href="<?php echo $home; ?>">
                            <?php if ($logo) { ?>
                                <h1><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></h1>
                            <?php } else { ?>
                                <h1><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></h1>
                            <?php } ?>
                        </a>
                    </div>

                    <div class="mail">
                        <p><i class="fa fa-envelope" aria-hidden="true"></i><a href="email:<?php echo $email; ?>"><?php echo $email; ?></a></p>
                        <p><i class="fa fa-skype" aria-hidden="true"></i><a href="skype:<?php echo $skype; ?>"><?php echo $skype; ?></a></p>
                    </div>

                    <div class="phones">
                        <p><i class="fa fa-phone" aria-hidden="true"></i><a href="tel:<?php echo $telephone; ?>"><?php echo $telephone; ?></a></p>
                        <p><a href="tel:<?php echo $fax; ?>"><?php echo $fax; ?></a></p>
                    </div>

                    <ul class="top-menu">
                        <li><a href="<?php echo $novelties; ?>">Новинки</a></li>
                        <li><a href="<?php echo $special; ?>">Распродажа</a></li>
                        <li><a href="<?php echo $guarantees; ?>">Наши гарантии</a></li>
                        <li><a href="<?php echo $refund; ?>">Обмен и возврат</a></li>
                        <li><a href="<?php echo $about; ?>">О магазине</a></li>
                    </ul>
                </div>

                <div class="col-md-12 pad-none">
                    <div class="block-main-menu">
                        <ul class="main-menu">
                            <li><a href="<?php echo $catalog; ?>">Каталог</a></li>
                            <li><a href="<?php echo $payment_delivery; ?>">Оплата и доставка</a></li>
                            <li><a href="<?php echo $wholesalers; ?>">Оптовикам</a></li>
                            <li><a href="<?php echo $news; ?>">Скидки и акции</a></li>
                            <li><a href="<?php echo $posts; ?>">Статьи, мастер-классы</a></li>
                            <li><a href="<?php echo $contact; ?>">Контакты</a></li>
                            <li><a href="<?php echo $testimonial; ?>">Отзывы</a></li>
                        </ul>
                    </div>
                </div>

                <div class="bottom-line-header">
                    <div class="col-md-3 pad-none-left">
                        <?php echo $search; ?>
                    </div>
                    <div class="col-md-6">
                        <div class="personal-area-block">
                            <?php if ($logged) { ?>
                                <p>Здравствуйте <?php echo $user_name; ?>, здесь Вы можете войти в <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a> | <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></p>
                            <?php }else{ ?>
                                <p>
                                    Личный кабинет <a href="<?php echo $login; ?>">Войти</a> или <a href="<?php echo $register; ?>">Зарегистрироваться</a>
                                </p>
                            <?php } ?>
                        </div>
                    </div>
                    <?php echo $cart; ?>
                </div>
            </div>
        </div>
    </header>
    <!-- end header -->