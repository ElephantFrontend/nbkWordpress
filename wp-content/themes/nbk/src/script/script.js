// инициализация слайдера на slick
		$('.slider_header').slick({
			dots: true,
			adaptiveHeight: true,
			slidesToScroll: 1,
			autoplay: true,
			autoplaySpeed: 8000,
		});
// jQuery код сайта
		jQuery(document).ready(function(){

			// гамбругер меню
			$('.gamburger').on('click', function(){
			$('.header_menu nav').toggleClass('header_menu_active');
			});
			// модальное окно
			$('.feedback_button').on('click', function(){
				$('.modal_window').toggleClass('modal_window-active');
				$('.modal_close').toggleClass('modal_close-active');
			})
			$('.modal_close').on('click', function(){
				$('.modal_close').removeClass('modal_close-active');
				$('.modal_window').removeClass('modal_window-active');
			});
			// аккордеон
			$('.catalog_block').on('click', f_acc);
				function f_acc(){
					$('.products_akordeon').not($(this).next()).slideUp(800);
					// открываем или скрываем блок под заголовоком, по которому кликнули
   					$(this).next().slideToggle(800);
				};
		});
