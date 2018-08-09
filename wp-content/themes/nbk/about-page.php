<?php get_header(); 
/*
Template Name: О нас
*/
?>
<div class="about wrapper">
	<div class="float_block">
		<div class="float_image">
		<?php  $slide1 = get_field('img_block1');?>
			<img src="<?php echo $slide1[url]; ?>" alt="">
		</div>
		<div class="float_text">
		<?php the_field('text_block1'); ?>
			<!-- <p class="text_bold text_upper">NBK Ukraine</p>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.</p> -->
		</div>
	</div>
	<div class="float_block">
		<div class="float_image">
			<?php  $slide2 = get_field('img_block2');?>
			<img src="<?php echo $slide2[url]; ?>" alt="">
		</div>
		<div class="float_text">
		<?php the_field('text_block2'); ?>
			<!-- <p class="text_bold text_upper">NBK Ukraine</p>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga non nemo laboriosam est. Aliquid officiis eaque, iusto similique dolore natus itaque facere eius, iure maiores, quas reprehenderit unde cum quia voluptatem corporis? Eligendi ipsam est natus quia suscipit esse doloribus odit reprehenderit reiciendis ut neque hic libero culpa laborum, minima repellendus, voluptatibus, delectus perspiciatis modi expedita laudantium fugit deserunt at necessitatibus quis. Ipsa, provident libero molestiae quos dolor totam dolores repudiandae odit fuga fugit veniam architecto ex nihil, aliquam voluptatibus iure quis voluptatum cum veritatis similique ea. Est quidem commodi neque, quae vitae similique asperiores eligendi maxime aperiam reiciendis facere tenetur maiores, quisquam dolorem voluptate nihil deserunt. Soluta numquam dicta, hic, quo molestiae deserunt doloremque possimus voluptatem recusandae maxime vero blanditiis expedita temporibus consequuntur nemo eaque quam officia corporis dolorum nulla tempore. Ad temporibus voluptatibus, repellat harum id veniam vel. Aspernatur, amet dolorum explicabo quod iusto quasi. Minima ab totam excepturi eum voluptatibus! Porro unde quas, similique molestiae animi, numquam consectetur, sint accusantium laborum quae quaerat autem repellat tempore officiis illo quam quisquam necessitatibus. At dolores facilis repellat eveniet harum ea quos vel enim quis, sit quam nemo cum deserunt hic fuga. Labore debitis laboriosam quidem nesciunt dolores et modi facere laudantium suscipit voluptatum soluta explicabo aliquam, inventore, libero, architecto sint quod! Quia impedit omnis modi suscipit officiis similique quibusdam debitis iste obcaecati cumque. Itaque voluptas quo voluptate, dolorum sequi repudiandae ipsa, animi consectetur ullam delectus officiis unde eius. Voluptas velit natus ipsum excepturi repellendus sequi commodi nesciunt quisquam vel, mollitia veniam exercitationem numquam temporibus id ab ducimus quibusdam aliquam dolor incidunt consequatur laborum consequuntur quae. Earum veniam ipsa suscipit in ipsam soluta, tempore, voluptatibus commodi autem tempora nisi ex animi quam? Quod in, eum officiis quam doloribus ipsum ullam.</p> -->
		</div>
	</div>

	<p class="text_bold text_upper">Про компанiю CHEVRON</p>
	<?php the_field('company_chevron'); ?>
	<!-- <p>Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!</p>
	<p>Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!</p>
	<ul>
		<li>Рандомный текст!</li>
		<li>Рандомный текст!</li>
		<li>Рандомный текст!</li>
		<li>Рандомный текст!</li>
	</ul> -->

	<p class="text_bold text_upper">Бренд Texaco</p>
	<?php the_field('brend_texaco'); ?>
	<!-- <p>Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!</p>
	<p>Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!! Рандомный текст для этого блока!!</p> -->
</div>
<?php get_footer(); ?>