<?php
/**
 * nbk functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package nbk
 */

if ( ! function_exists( 'nbk_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function nbk_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on nbk, use a find and replace
		 * to change 'nbk' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'nbk', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			// 'menu-1' => esc_html__( 'Primary', 'nbk' ),
			'menu_header' => esc_html__( 'menu_header', 'nbk' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'nbk_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'nbk_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function nbk_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'nbk_content_width', 640 );
}
add_action( 'after_setup_theme', 'nbk_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function nbk_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'nbk' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'nbk' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'nbk_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function nbk_scripts() {
	wp_enqueue_style( 'nbk-style', get_stylesheet_uri() );

	wp_enqueue_style( 'nbk-style-slick', get_template_directory_uri() . '/src/style/slick.css' );
	wp_enqueue_style( 'nbk-style-slick-theme', get_template_directory_uri() . '/src/style/slick-theme.css' );

	wp_enqueue_script( 'nbk-script-jquery', 'https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js', array(), '20151215', true );
	wp_enqueue_script( 'nbk-script-slick', get_template_directory_uri() . '/src/script/slick.min.js', array(), '20151215', true );
	wp_enqueue_script( 'nbk-script', get_template_directory_uri() . '/src/script/script.js', array(), '20151215', true );
	// wp_enqueue_script( 'nbk-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

	// wp_enqueue_script( 'nbk-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'nbk_scripts' );

// Register Custom Post Type
function product_post_type() {

	$labels = array(
		'name'                  => _x( 'product', 'Post Type General Name', 'text_domain' ),
		'singular_name'         => _x( 'product', 'Post Type Singular Name', 'text_domain' ),
		'menu_name'             => __( 'Товары', 'text_domain' ),
		'name_admin_bar'        => __( 'Post Type', 'text_domain' ),
		'archives'              => __( 'Архив товаров', 'text_domain' ),
		'attributes'            => __( 'Item Attributes', 'text_domain' ),
		'parent_item_colon'     => __( 'Parent Item:', 'text_domain' ),
		'all_items'             => __( 'Все товары', 'text_domain' ),
		'add_new_item'          => __( 'Добавить новый товар', 'text_domain' ),
		'add_new'               => __( 'Добавить товар', 'text_domain' ),
		'new_item'              => __( 'Новый товар', 'text_domain' ),
		'edit_item'             => __( 'Редактировать товар', 'text_domain' ),
		'update_item'           => __( 'Обновить товар', 'text_domain' ),
		'view_item'             => __( 'Смотреть товар', 'text_domain' ),
		'view_items'            => __( 'Смотреть товары', 'text_domain' ),
		'search_items'          => __( 'Поиск товара', 'text_domain' ),
		'not_found'             => __( 'Нет товаров', 'text_domain' ),
		'not_found_in_trash'    => __( 'Not found in Trash', 'text_domain' ),
		'featured_image'        => __( 'Featured Image', 'text_domain' ),
		'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
		'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
		'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
		'insert_into_item'      => __( 'Insert into item', 'text_domain' ),
		'uploaded_to_this_item' => __( 'Uploaded to this item', 'text_domain' ),
		'items_list'            => __( 'Items list', 'text_domain' ),
		'items_list_navigation' => __( 'Items list navigation', 'text_domain' ),
		'filter_items_list'     => __( 'Filter items list', 'text_domain' ),
	);
	$args = array(
		'label'                 => __( 'product', 'text_domain' ),
		'description'           => __( 'product Description', 'text_domain' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'editor' ),
		'taxonomies'            => array( 'product_taxonomy' ),
		'hierarchical'          => true,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 5,
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
		'supports' => array(
			'title', // Заголовок объекта типа записи.
            'editor', // Редактор контента.
            'thumbnail', // Миниатюра.
        ),
	);
	register_post_type( 'product', $args );
}
add_action( 'init', 'product_post_type', 0 );
// Register Custom Taxonomy Partners
function product_taxonomy() {

	$labels = array(
		'name'                       => _x( 'product_category', 'Taxonomy General Name', 'text_domain' ),
		'singular_name'              => _x( 'product_category', 'Taxonomy Singular Name', 'text_domain' ),
		'menu_name'                  => __( 'Товары', 'text_domain' ),
		'all_items'                  => __( 'Все товары', 'text_domain' ),
		'parent_item'                => __( 'Parent Item', 'text_domain' ),
		'parent_item_colon'          => __( 'Parent Item:', 'text_domain' ),
		'new_item_name'              => __( 'Новое название товара', 'text_domain' ),
		'add_new_item'               => __( 'Нобавить новый товар', 'text_domain' ),
		'edit_item'                  => __( 'Редактировать товар', 'text_domain' ),
		'update_item'                => __( 'Обновить товар', 'text_domain' ),
		'view_item'                  => __( 'Смотреть товар', 'text_domain' ),
		'separate_items_with_commas' => __( 'Separate items with commas', 'text_domain' ),
		'add_or_remove_items'        => __( 'Add or remove items', 'text_domain' ),
		'choose_from_most_used'      => __( 'Choose from the most used', 'text_domain' ),
		'popular_items'              => __( 'Popular Items', 'text_domain' ),
		'search_items'               => __( 'Поиск товарво', 'text_domain' ),
		'not_found'                  => __( 'Нет товаров', 'text_domain' ),
		'no_terms'                   => __( 'No items', 'text_domain' ),
		'items_list'                 => __( 'Items list', 'text_domain' ),
		'items_list_navigation'      => __( 'Items list navigation', 'text_domain' ),
	);
	$args = array(
		'labels'                     => $labels,
		'hierarchical'               => true,
		'public'                     => true,
		'show_ui'                    => true,
		'show_admin_column'          => true,
		'show_in_nav_menus'          => true,
		'show_tagcloud'              => true,
	);
	register_taxonomy( 'product_taxonomy', array( 'product' ), $args );

}
add_action( 'init', 'product_taxonomy', 0 );
// Кастомайзер во внешнем виде
add_action('customize_register', function($customizer){
    $customizer->add_section(
        'example_section_one',
        array(
            'title' => 'Контакты',
            'description' => 'Введите ваши контакты',
            'priority' => 11,
        )
    );
// num1
    $customizer->add_setting(
    'name'
	);

	$customizer->add_control(
    'name',
    array(
        'label' => 'Название компании',
        'section' => 'example_section_one',
        'type' => 'text',
    )
	);
// факс
    $customizer->add_setting(
    'mailing_address'
	);

	$customizer->add_control(
    'mailing_address',
    array(
        'label' => 'Почтовый адрес',
        'section' => 'example_section_one',
        'type' => 'text',
    )
	);
// email
    $customizer->add_setting(
    'street'
	);

	$customizer->add_control(
    'street',
    array(
        'label' => 'Улица',
        'section' => 'example_section_one',
        'type' => 'text',
    )
	);
// Почтовый индекс
    $customizer->add_setting(
    'telephone'
	);

	$customizer->add_control(
    'telephone',
    array(
        'label' => 'Телефон',
        'section' => 'example_section_one',
        'type' => 'text',
    )
	);
// Адресс
    $customizer->add_setting(
    'fax'
	);

	$customizer->add_control(
    'fax',
    array(
        'label' => 'Факс',
        'section' => 'example_section_one',
        'type' => 'text',
    )
	);
	 $customizer->add_setting(
    'email'
	);

	$customizer->add_control(
    'email',
    array(
        'label' => 'E-mail',
        'section' => 'example_section_one',
        'type' => 'text',
    )
	);
	 $customizer->add_setting(
    'name_manager'
	);

	$customizer->add_control(
    'name_manager',
    array(
        'label' => 'Меннеджер по роботе с корпоративными клиентами',
        'section' => 'example_section_one',
        'type' => 'text',
    )
	);
});
/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

