<?php get_header(); ?>
<div class="product wrapper">
	<div class="float_block">
		<div class="float_image">
			<!-- <img src="src/img/License.jpg" alt=""> -->
			<?php the_post_thumbnail( ); ?>
		</div>
		<div class="float_text">
			<p class="text_bold text_upper"><?php the_title(); ?></p>
			<?php the_content(); ?>
			<!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore suscipit placeat sequi ullam est fuga molestias, culpa aspernatur dignissimos! Explicabo autem ipsum blanditiis dolorem repudiandae. Ad dignissimos doloremque ab quae. Accusantium incidunt est illum, dolores placeat voluptates assumenda quae similique in unde dolor, quod repellat ipsam porro earum fuga, vitae ipsa perferendis quaerat accusamus adipisci cupiditate. Explicabo harum quidem quis voluptatibus voluptate impedit distinctio neque, odio ad provident perferendis molestiae.</p> -->
		</div>
	</div>
	<div class="product_content">
	<?php if ( get_field('advantages') ) {?>
                        <p class="text_bold text_upper">Преимущества:</p>
		<?php the_field('advantages'); ?>
                        <?php } else { ?>
                       
                    <?php } ?>
		
		<!-- <ul>
			<li>Random text test my product!!!</li>
			<li>Random text test my product!!!</li>
			<li>Random text test my product!!!</li>
			<li>Random text test my product!!!</li>
			<li>Random text test my product!!!</li>
		</ul> -->
		<?php if ( get_field('level_of_performance') ) {?>
		<p class="text_bold text_upper">Уровень эксплуатационных свойств:</p>
		<?php the_field('level_of_performance'); ?>
                        <?php } else { ?>
                       
                    <?php } ?>
        <?php if ( get_field('requirements') ) {?>
		<p class="text_bold text_upper">Соответствует требованиям:</p>
		<?php the_field('requirements'); ?>
                        <?php } else { ?>
                       
                    <?php } ?>
		<!-- <p>Random text какие-то требования которым соответствует товар!</p> -->
		<?php if ( get_field('officially_approved') ) {?>
		<p class="text_bold text_upper">Официально одобрено:</p>
		<?php the_field('officially_approved'); ?>
                        <?php } else { ?>
                       
                    <?php } ?>
		<!-- <p>Официально одобрено по 1статье</p>
		<p>Официально одобрено по 1статье</p>
		<p>Официально одобрено по 1статье</p> -->
		<a href="<?php the_field('description_product'); ?>">
		<img src="<?php bloginfo('template_url'); ?>/src/img/pdf-icon.png" alt=""> Подробное описание данного продукта!
		</a>
	</div>

</div>
<?php get_footer(); ?>