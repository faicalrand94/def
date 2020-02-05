<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'faical' );

/** MySQL database password */
define( 'DB_PASSWORD', 'rand' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '~jylGu$2<x88_Ww~:h;v4p-e->_cCvG 1Wa4D2}_ULHurpTAAr0b9(%D=1N9U8Q&' );
define( 'SECURE_AUTH_KEY',  's,/zrE45QA:5<^aRvX_$}?AO7=C(rX1D5hLcN.U6@f:R.6r8D~| R J-8[j?/%%;' );
define( 'LOGGED_IN_KEY',    '=Vdn3{]v*qhcGg>rE<!)4,Sx%Jt}jv/Gc2u566BSKgswTzs/Qy_+ WU[sk@s;Zk2' );
define( 'NONCE_KEY',        '901iwo3dQ3QDHkiT6o%zoi+^lmW/)x|lK0a+TYoY.mD9zMPw3UH:Len712D1}Z2(' );
define( 'AUTH_SALT',        'S4L65$ko7OJ!KUH}2NaeVcS;tBA9IrG`A!8)cZ(K8kev_ca5]9VZ@;s}?y.OUX`o' );
define( 'SECURE_AUTH_SALT', 'M#Ey$v>fa0Eg]a@:I`39*X#&[Y$`Z^{^)Z)W$,oeP*r(hZb1-64qPvq05.Nu] 4N' );
define( 'LOGGED_IN_SALT',   '4@2|1)J([GsXjPY0?rc`L=4TY|qm%J/f-|25`N-@INdO7[blO-)laKRO2!]sKi:z' );
define( 'NONCE_SALT',       '^:l)^!)]3bi&o^hfBM0#XKyuXnO]KALg`..vGrV9<YMn;tL %!)<j(r2+1B|i=h$' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
