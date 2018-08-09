<?php get_header(); 
/*
Template Name: Контакты
*/
?>
<!-- contacts -->
<div class="contacts">
	<p class="text_caption text_center">Контакты</p>
	<div class="contacts_block">
		<h1><?php echo get_theme_mod('name'); ?></h1>
		<p>Поштова адреса:</p>
		<p><?php echo get_theme_mod('mailing_address'); ?></p>
		<p><?php echo get_theme_mod('street'); ?></p>
		<p>Тел: <?php echo get_theme_mod('telephone'); ?></p>
		<p>Факс: <?php echo get_theme_mod('fax'); ?></p>
		<p>E-mail: <?php echo get_theme_mod('email'); ?></p>
		<span class="manager_block">
		<p>Менеджер по роботi з корпоративними клiєнтами</p>
		<p><?php echo get_theme_mod('name_manager'); ?></p>
		</span>
		<button class="feedback_button defolt_button"><span>Надiслати</span> листа</button>
	</div>
	<div class="map">
		<iframe class="map_google" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d635.2575142833881!2d30.520470129251493!3d50.44054079871714!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40d4ceff05ec5a03%3A0xa1b1cdd88000a3ad!2z0LLRg9C70LjRhtGPINCS0LXQu9C40LrQsCDQktCw0YHQuNC70YzQutGW0LLRgdGM0LrQsCwgOS8yLCDQmtC40ZfQsiwgMDIwMDA!5e0!3m2!1sru!2sua!4v1527665735855" width="100%" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
</div>
<?php get_footer(); ?>