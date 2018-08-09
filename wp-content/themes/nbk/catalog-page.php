<?php get_header(); 
/*
Template Name: Каталог
*/
?>
<div class="catalog">
	<div class="catalog_wrapper wrapper">
	<div class="catalog_block">
			<div class="catalog_name">
				<div class="catalog_name-name">
					<h3 class="text_upper text_middle">Оливи для Легкових автомобiлiв</h3>
				</div>
				<div class="catalog_name-img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category1.jpg" alt="">
				</div>
			</div>
	</div>
	<div class="products_akordeon">
	 <?php
$query = new WP_Query('post_type=product&product_taxonomy=legkovye'); // указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
if( $query->have_posts() ){
	while( $query->have_posts() ){ $query->the_post();
	?>
		<!--  -->
		
					<div class="product_akordeon">
					<a href="<?php echo get_permalink(); ?>">
						<p><?php the_title(); ?></p>
					</a>
				</div>
					
	<?php
	}
	wp_reset_postdata(); // сбрасываем переменную $post
} 
else echo 'Записей нет.';
?>
				
			</div>
	</div>
	<!--  -->
	<div class="catalog_wrapper wrapper">
	<div class="catalog_block">
			<div class="catalog_name">
				<div class="catalog_name-name">
					<h3 class="text_upper text_middle">Гальмiвнi та охолоджуючi рiдини</h3>
				</div>
				<div class="catalog_name-img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category2.jpg" alt="">
				</div>
			</div>
	</div>
	<div class="products_akordeon">
	<?php
$query = new WP_Query('post_type=product&product_taxonomy=galmivni-ta-oholodzhuyuchi-ridini'); // указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
if( $query->have_posts() ){
	while( $query->have_posts() ){ $query->the_post();
	?>
		<!--  -->
		
					<div class="product_akordeon">
					<a href="<?php echo get_permalink(); ?>">
						<p><?php the_title(); ?></p>
					</a>
				</div>
					
	<?php
	}
	wp_reset_postdata(); // сбрасываем переменную $post
} 
else echo 'Записей нет.';
?>
			</div>
	</div>
	<!--  -->
	<div class="catalog_wrapper wrapper">
	<div class="catalog_block">
			<div class="catalog_name">
				<div class="catalog_name-name">
					<h3 class="text_upper text_middle">для двигунiв морських суден та тепловозiв</h3>
				</div>
				<div class="catalog_name-img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category3.jpg" alt="">
				</div>
			</div>
	</div>
	<div class="products_akordeon">
		<?php
$query = new WP_Query('post_type=product&product_taxonomy=dlya-dviguniv-morskih-suden-ta-teplovoziv'); // указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
if( $query->have_posts() ){
	while( $query->have_posts() ){ $query->the_post();
	?>
		<!--  -->
		
					<div class="product_akordeon">
					<a href="<?php echo get_permalink(); ?>">
						<p><?php the_title(); ?></p>
					</a>
				</div>
					
	<?php
	}
	wp_reset_postdata(); // сбрасываем переменную $post
} 
else echo 'Записей нет.';
?>
			</div>
	</div>
	<!--  -->
	<div class="catalog_wrapper wrapper">
	<div class="catalog_block">
			<div class="catalog_name">
				<div class="catalog_name-name">
					<h3 class="text_upper text_middle">для Комерцiйного транспорту</h3>
				</div>
				<div class="catalog_name-img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category4.jpg" alt="">
				</div>
			</div>
	</div>
	<div class="products_akordeon">
	<?php
$query = new WP_Query('post_type=product&product_taxonomy=dlya-komertsijnogo-transportu'); // указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
if( $query->have_posts() ){
	while( $query->have_posts() ){ $query->the_post();
	?>
		<!--  -->
		
					<div class="product_akordeon">
					<a href="<?php echo get_permalink(); ?>">
						<p><?php the_title(); ?></p>
					</a>
				</div>
					
	<?php
	}
	wp_reset_postdata(); // сбрасываем переменную $post
} 
else echo 'Записей нет.';
?>
			</div>
	</div>
	<!--  -->
	<div class="catalog_wrapper wrapper">
	<div class="catalog_block">
			<div class="catalog_name">
				<div class="catalog_name-name">
					<h3 class="text_upper text_middle">для Мототехнiки та двигунiв для човнiв</h3>
				</div>
				<div class="catalog_name-img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category5.jpg" alt="">
				</div>
			</div>
	</div>
	<div class="products_akordeon">
		<?php
$query = new WP_Query('post_type=product&product_taxonomy=dlya-mototehniki-ta-dviguniv-dlya-chovniv'); // указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
if( $query->have_posts() ){
	while( $query->have_posts() ){ $query->the_post();
	?>
		<!--  -->
		
					<div class="product_akordeon">
					<a href="<?php echo get_permalink(); ?>">
						<p><?php the_title(); ?></p>
					</a>
				</div>
					
	<?php
	}
	wp_reset_postdata(); // сбрасываем переменную $post
} 
else echo 'Записей нет.';
?>
			</div>
	</div>
	<!--  -->
	<div class="catalog_wrapper wrapper">
	<div class="catalog_block">
			<div class="catalog_name">
				<div class="catalog_name-name">
					<h3 class="text_upper text_middle">для Промислового застосування</h3>
				</div>
				<div class="catalog_name-img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category6.jpg" alt="">
				</div>
			</div>
	</div>
	<div class="products_akordeon">
			<?php
$query = new WP_Query('post_type=product&product_taxonomy=dlya-promislovogo-zastosuvannya'); // указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
if( $query->have_posts() ){
	while( $query->have_posts() ){ $query->the_post();
	?>
		<!--  -->
		
					<div class="product_akordeon">
					<a href="<?php echo get_permalink(); ?>">
						<p><?php the_title(); ?></p>
					</a>
				</div>
					
	<?php
	}
	wp_reset_postdata(); // сбрасываем переменную $post
} 
else echo 'Записей нет.';
?>
			</div>
	</div>
	<!--  -->
	<div class="catalog_wrapper wrapper">
	<div class="catalog_block">
			<div class="catalog_name">
				<div class="catalog_name-name">
					<h3 class="text_upper text_middle">для Тракторiв та позашляхової технiки</h3>
				</div>
				<div class="catalog_name-img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category7.jpg" alt="">
				</div>
			</div>
	</div>
	<div class="products_akordeon">
		<?php
$query = new WP_Query('post_type=product&product_taxonomy=dlya-traktoriv-ta-pozashlyahovoyi-tehniki'); // указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
if( $query->have_posts() ){
	while( $query->have_posts() ){ $query->the_post();
	?>
		<!--  -->
		
					<div class="product_akordeon">
					<a href="<?php echo get_permalink(); ?>">
						<p><?php the_title(); ?></p>
					</a>
				</div>
					
	<?php
	}
	wp_reset_postdata(); // сбрасываем переменную $post
} 
else echo 'Записей нет.';
?>
			</div>
	</div>
	<!--  -->
	<div class="catalog_wrapper wrapper">
	<div class="catalog_block">
			<div class="catalog_name">
				<div class="catalog_name-name">
					<h3 class="text_upper text_middle">Пластичнi мастила</h3>
				</div>
				<div class="catalog_name-img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category8.jpg" alt="">
				</div>
			</div>
	</div>
	<div class="products_akordeon">
	<?php
$query = new WP_Query('post_type=product&product_taxonomy=plastichni-mastila'); // указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
if( $query->have_posts() ){
	while( $query->have_posts() ){ $query->the_post();
	?>
		<!--  -->
		
					<div class="product_akordeon">
					<a href="<?php echo get_permalink(); ?>">
						<p><?php the_title(); ?></p>
					</a>
				</div>
					
	<?php
	}
	wp_reset_postdata(); // сбрасываем переменную $post
} 
else echo 'Записей нет.';
?>
			</div>
	</div>
	<!--  -->
	<div class="catalog_wrapper wrapper">
	<div class="catalog_block">
			<div class="catalog_name">
				<div class="catalog_name-name">
					<h3 class="text_upper text_middle">Спецiалiзованi сервiснi продукти</h3>
				</div>
				<div class="catalog_name-img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category9.jpg" alt="">
				</div>
			</div>
	</div>
	<div class="products_akordeon">
	<?php
$query = new WP_Query('post_type=product&product_taxonomy=spetsializovani-servisni-produkti	'); // указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
if( $query->have_posts() ){
	while( $query->have_posts() ){ $query->the_post();
	?>
		<!--  -->
		
					<div class="product_akordeon">
					<a href="<?php echo get_permalink(); ?>">
						<p><?php the_title(); ?></p>
					</a>
				</div>
					
	<?php
	}
	wp_reset_postdata(); // сбрасываем переменную $post
} 
else echo 'Записей нет.';
?>
			</div>
	</div>
	<!--  -->
	<div class="catalog_wrapper wrapper">
	<div class="catalog_block">
			<div class="catalog_name">
				<div class="catalog_name-name">
					<h3 class="text_upper text_middle">Трансмiсшйнi оливи та рiдини</h3>
				</div>
				<div class="catalog_name-img">
					<img src="<?php bloginfo('template_url'); ?>/src/img/category10.jpg" alt="">
				</div>
			</div>
	</div>
	<div class="products_akordeon">
	<?php
$query = new WP_Query('post_type=product&product_taxonomy=transmisshjni-olivi-ta-ridini'); // указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
if( $query->have_posts() ){
	while( $query->have_posts() ){ $query->the_post();
	?>
		<!--  -->
		
					<div class="product_akordeon">
					<a href="<?php echo get_permalink(); ?>">
						<p><?php the_title(); ?></p>
					</a>
				</div>
					
	<?php
	}
	wp_reset_postdata(); // сбрасываем переменную $post
} 
else echo 'Записей нет.';
?>
			</div>
	</div>
</div>
<?php get_footer(); ?>