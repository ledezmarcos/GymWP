<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress58' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Wd!2Q.8?>}c-GE8q3A:E1Iz!~{[H}50y~ZH$2BO3y:Y<JTtyiIC- yAYJ1|V>f4f' );
define( 'SECURE_AUTH_KEY',  '[ X6&x&=/#5E;27`3J*=sUDgLa`H& #:,[k=y]&8~e(F+tlRer<my5#Ip- }C7=D' );
define( 'LOGGED_IN_KEY',    'X/6f/1#tvSrpw5vj3(V;zml!W@.d:)NAyp}DY$8$~F7:eQ}IB2[.u|hU%,Esy0^W' );
define( 'NONCE_KEY',        'l&&V}?y~?Gw`55=m~sr0=@+eO&~rVnOPc@m&@%kx/%[rnI7 SeC]qzTjOMsS]@Fj' );
define( 'AUTH_SALT',        '>Xp-D,=+ y^{b%:@=H%6(U9gM#OfHBa%HoVC|dd_lo8TG;/*~@WNPMO+o/:}(U3$' );
define( 'SECURE_AUTH_SALT', 'fPRIZ!&,3x~1MKcZ=3Cdi)IR*OI0j$v`9?U0?I6Xf@hKou~h~b!HmSf]{-qM@GE=' );
define( 'LOGGED_IN_SALT',   '<Qw*IrO*rMxM i}AGa,Iz8v*y+FQ`zn66iqJ&e[8m6[-6F2EIY$TsZlq_:k,K#z7' );
define( 'NONCE_SALT',       'P.<-FKlt=(b2s.;0xdnuXN5J0l4H>h[G_XmC7qo?YwL*IaB:=Dq!</~B2HtKEc*)' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
