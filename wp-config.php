<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'nbk');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'tOtpvfQD{NWaA5dZh@Sdi0E1EDUIAp!(,*A6goa5;6)2Lx8<p~xM~59}b2&AJW-M');
define('SECURE_AUTH_KEY',  'ei+Zy!Wa5l=d}*d?(u*va@-_fPi|3dKoPH6P{gXKaCy,.B}7IREvI5$CYITD]|YY');
define('LOGGED_IN_KEY',    'KeUf-A=)TXaN*dGb|M>R-t+o?mhnCoXgF@_]Y4@26Yq%@D?;F W7&IHwvX$O00Qw');
define('NONCE_KEY',        'yfcRS1|_3%;[/9yPC4Bosz[a_3~,0k7b9K*8AlzPW!Sg%b&p~F-8;5Un74nkRrHB');
define('AUTH_SALT',        'f!,!9%{b[(&_;mlZQ.68[?*f-TIm2cuR$bkx Lih1wu7yRH#T?+n`$`yP;3kDD~H');
define('SECURE_AUTH_SALT', 'u_n7^K{P8#0r#3wVnEK2(hRw,`?b;r!Ob_%OVU{Hf)iw}3+J1KpEB5E{lwjHj`*0');
define('LOGGED_IN_SALT',   'Yc+$*VcB<02}u.eUcN/#Hn/x-z;i=?J(949-^tW<[K^|e`Gl1pF7, bB^euoI2l>');
define('NONCE_SALT',       '_k7qP^YZ<X ;HgYG9F_^B<a|Z/-/;s-!PeX{{$S3OCv7clbH@PpiRR]4b:}X[_4I');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
