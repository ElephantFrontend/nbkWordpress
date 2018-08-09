<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package nbk
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- <link rel="stylesheet" href="src/style/style.css">
	<link rel="stylesheet" href="src/style/slick-theme.css">
	<link rel="stylesheet" href="src/style/slick.css"> -->

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div class="modal_close"></div>
<div class="modal_window">
	<!-- <form class="modal_form" action="">
		<input class="form_name" type="text" name="name" placeholder="Ф.И.О">
		<input class="form_email" type="email" name="email" placeholder="E-mail">
		<input class="form_subject" type="text" name="subject" placeholder="Тема">
		<textarea class="form_message" name="message"  placeholder="Введите сообщение"></textarea>
		<input class="form_submit" type="submit" value="Надiслати листа">
	</form> -->
	<?php echo do_shortcode( '[contact-form-7 id="5" title="modal_form"]' ); ?>
</div>
<!-- header -->
<header>
	<div class="wrapper">
		<div class="header_logo">
			<a href="<?php echo get_home_url ( ) ; ?>"><img src="<?php bloginfo('template_url'); ?>/src/img/nbk-ukraine_logo.svg" alt=""></a>
		</div>
		<menu class="header_menu">
			<div class="gamburger">
				<span></span>
				<span></span>
				<span></span>
				<p>МЕНЮ</p>
			</div>
			<nav>
				<?php
									wp_nav_menu( array(
										'theme_location' => 'menu_header',
										'menu_id'        => '',
										'menu_class'        => 'header_menu_ul',
										'container'      => '', 
										'items_wrap'      => '<ul id="%1$s" class="%2$s">%3$s</ul>',
									) );
				?>
				<!-- <ul>
					<li><a href="#">Головна</a></li>
					<li><a href="about.php">Про нас</a></li>
					<li><a href="category.php">Каталог</a></li>
					<li><a href="#">Пiдбiр олив</a></li>
					<li><a href="contacts.php">Контакти</a></li>
				</ul> -->
			</nav>
		</menu>
	</div>
</header>
