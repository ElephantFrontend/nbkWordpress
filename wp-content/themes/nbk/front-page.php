<?php get_header(); ?>
<!-- slider -->
<div class="slider_header">
<?php
    $images = acf_photo_gallery('slider_header', $post->ID); 
    if( count($images) ):
        foreach($images as $image):
            $id = $image['id'];
            $title = $image['title']; 
            $caption= $image['caption'];
            $full_image_url= $image['full_image_url']; 
            // $full_image_url = acf_photo_gallery_resize_image($full_image_url, 262, 160); 
            $thumbnail_image_url= $image['thumbnail_image_url']; 
            $url= $image['url']; 
            $target= $image['target']; 
            $alt = get_field('photo_gallery_alt', $id); 
            $class = get_field('photo_gallery_class', $id);
?>

        <?php if( !empty($url) ){ ?> <?php } ?>
           <img src="<?php echo $full_image_url; ?>" alt="<?php echo $title; ?>" title="<?php echo $title; ?>">
        <?php if( !empty($url) ){ ?></a><?php } ?>
<?php endforeach; endif; ?>
	<!-- <img src="<?php //bloginfo('template_url'); ?>/src/img/slider1.jpg" alt="">
	<img src="<?php //bloginfo('template_url'); ?>/src/img/slider2.jpg" alt="">
	<img src="<?php //bloginfo('template_url'); ?>/src/img/slider3.jpg" alt=""> -->
</div>
<!-- category_product -->
<div class="category_product">
	<div class="category_product_wrapper wrapper">
		<div class="category_product_block">
			<a href="#">
				<div class="category_product_content">
					<p class="text_middle">Оливи для</p>
					<p>легкоих автомобiлiв</p>
				</div>
				<div class="category_product_img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category1.jpg" alt="">
				</div>
			</a>
		</div>
		<div class="category_product_block">
			<a href="#">
				<div class="category_product_content">
					<p class="text_middle">Оливи для</p>
					<p>легкоих автомобiлiв</p>
				</div>
				<div class="category_product_img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category2.jpg" alt="">
				</div>
			</a>
		</div>
		<div class="category_product_block">
			<a href="#">
				<div class="category_product_content">
					<p class="text_middle">Оливи для</p>
					<p>легкоих автомобiлiв</p>
				</div>
				<div class="category_product_img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category3.jpg" alt="">
				</div>
			</a>
		</div>
		<div class="category_product_block">
			<a href="#">
				<div class="category_product_content">
					<p class="text_middle">Оливи для</p>
					<p>легкоих автомобiлiв</p>
				</div>
				<div class="category_product_img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category4.jpg" alt="">
				</div>
			</a>
		</div>
		<div class="category_product_block">
			<a href="#">
				<div class="category_product_content">
					<p class="text_middle">Оливи для</p>
					<p>легкоих автомобiлiв</p>
				</div>
				<div class="category_product_img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category5.jpg" alt="">
				</div>
			</a>
		</div>
		<div class="category_product_block">
			<a href="#">
				<div class="category_product_content">
					<p class="text_middle">Оливи для</p>
					<p>легкоих автомобiлiв</p>
				</div>
				<div class="category_product_img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category6.jpg" alt="">
				</div>
			</a>
		</div>
		<div class="category_product_block">
			<a href="#">
				<div class="category_product_content">
					<p class="text_middle">Оливи для</p>
					<p>легкоих автомобiлiв</p>
				</div>
				<div class="category_product_img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category7.jpg" alt="">
				</div>
			</a>
		</div>
		<div class="category_product_block">
			<a href="#">
				<div class="category_product_content">
					<p class="text_middle">Оливи для</p>
					<p>легкоих автомобiлiв</p>
				</div>
				<div class="category_product_img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category8.jpg" alt="">
				</div>
			</a>
		</div>
		<div class="category_product_block">
			<a href="#">
				<div class="category_product_content">
					<p class="text_middle">Оливи для</p>
					<p>легкоих автомобiлiв</p>
				</div>
				<div class="category_product_img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category9.jpg" alt="">
				</div>
			</a>
		</div>
		<div class="category_product_block">
			<a href="#">
				<div class="category_product_content">
					<p class="text_middle">Оливи для</p>
					<p>легкоих автомобiлiв</p>
				</div>
				<div class="category_product_img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category10.jpg" alt="">
				</div>
			</a>
		</div>
	</div>
</div>
<!-- parallax -->
<?php  $parallax = get_field('img_parallax1');?>
<div class="parallax" style="background-image:url('<?php echo $parallax[url]; ?>">
	<div class="parallax_block">
		<p class="text_big"><?php the_field('title_parallax1'); ?></p>
	<?php the_field('text_parallax1'); ?>
	<a class="defolt_button" href="<?php the_field('link_parallax1'); ?>"><span>Читати</span> далi</a>
	</div>
</div>
<!-- products -->
<div class="products">
	<p class="text_caption text_center">Chevron <span>товари</span></p>
		<div class="products_wrapper wrapper">
		<?php
$query = new WP_Query('post_type=product'); // указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
if( $query->have_posts() ){
	while( $query->have_posts() ){ $query->the_post();
	?>
		<!--  -->
		<div class="products_block">
			<a href="<?php the_permalink(); ?>">
				<div class="news_block_img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category9.png" alt="">
				</div>
				<div class="news_block_content">
					<p class="name_product"><?php the_title(); ?></p>
					<p class="name_product">$ <?php the_field('price'); ?></p>
				</div>
			</a>
		</div>
	<?php
	}
	wp_reset_postdata(); // сбрасываем переменную $post
} 
else echo 'Записей нет.';
?>
		<!-- <div class="products_block">
			<a href="#">
				<div class="news_block_img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category9.png" alt="">
				</div>
				<div class="news_block_content">
					<p class="name_product">Lorem ipsum lorem</p>
					<p class="name_product">$230.99</p>
				</div>
			</a>
		</div>
		<div class="products_block">
			<a href="#">
				<div class="news_block_img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category9.png" alt="">
				</div>
				<div class="news_block_content">
					<p class="name_product">Lorem ipsum lorem</p>
					<p class="name_product">$230.99</p>
				</div>
			</a>
		</div>
		<div class="products_block">
			<a href="#">
				<div class="news_block_img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category9.png" alt="">
				</div>
				<div class="news_block_content">
					<p class="name_product">Lorem ipsum lorem</p>
					<p class="name_product">$230.99</p>
				</div>
			</a>
		</div>
		<div class="products_block">
			<a href="#">
				<div class="news_block_img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category9.png" alt="">
				</div>
				<div class="news_block_content">
					<p class="name_product">Lorem ipsum lorem</p>
					<p class="name_product">$230.99</p>
				</div>
			</a>
		</div> -->
	</div>
</div>
<div class="news">
		<div class="news_wrapper wrapper">
	<?php
$query = new WP_Query('cat=2&nopaging=1'); // указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
if( $query->have_posts() ){
	while( $query->have_posts() ){ $query->the_post();
	?>
		<div class="news_block">
				<div class="news_block_img" style="background-image: url('<?php bloginfo('template_url'); ?>/src/img/nbk-ukraine_logo.jpg');">
					
				</div>
				<div class="news_block_content">
					<p class="text_bold"><?php the_title(); ?></p>
					<p><?php the_content(); ?></p>
					<a class="defolt_button" href="<?php the_permalink(); ?>"><span>Читати</span> далi</a>
				</div>
		</div>
	<?php
	}
	wp_reset_postdata(); // сбрасываем переменную $post
} 
else echo 'Записей нет.';
?>
		<!-- <div class="news_block">
				<div class="news_block_img" style="background-image: url('<?php bloginfo('template_url'); ?>/src/img/nbk-ukraine_logo.jpg');">
					
				</div>
				<div class="news_block_content">
					<p class="text_bold">lorem lorem lorem ips int amit lorem</p>
					<p>lorem ipsum lorem text content amit lorem ipsum lorem</p>
					<a class="defolt_button" href="#"><span>Читати</span> далi</a>
				</div>
		</div>
		<div class="news_block">
				<div class="news_block_img" style="background-image: url('<?php bloginfo('template_url'); ?>/src/img/nbk-ukraine_logo.jpg');">
					
				</div>
				<div class="news_block_content">
					<p class="text_bold">lorem lorem lorem ips int amit lorem</p>
					<p>lorem ipsum lorem text content amit lorem ipsum lorem</p>
					<a class="defolt_button" href="#"><span>Читати</span> далi</a>
				</div>
		</div>
		<div class="news_block">
				<div class="news_block_img" style="background-image: url('<?php bloginfo('template_url'); ?>/src/img/nbk-ukraine_logo.jpg');">
		
				</div>
				<div class="news_block_content">
					<p class="text_bold">lorem lorem lorem ips int amit lorem</p>
					<p>lorem ipsum lorem text content amit lorem ipsum lorem</p>
					<a class="defolt_button" href="#"><span>Читати</span> далi</a>
				</div>
		</div> -->
	</div>
</div>
<!-- parallax -->
<?php  $parallax2 = get_field('img_parallax2');?>
<div class="parallax" style="background-image:url('<?php echo $parallax2[url]; ?>">
	<div class="parallax_block">
		<p class="text_big"><?php the_field('title_parallax2'); ?></p>
		<?php the_field('text_parallax2'); ?>
	<!-- <p>еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче Кфтвщь еуче кфтвщь фьше дщкуь шзыгь еуче</p> -->
	<a class="defolt_button" href="<?php the_field('link_parallax2'); ?>"><span>Читати</span> далi</a>
	</div>
</div>
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
