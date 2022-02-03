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
define( 'DB_NAME', 'mydb' );

/** MySQL database username */
define( 'DB_USER', 'root1' );

/** MySQL database password */
define( 'DB_PASSWORD', '123' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost:3306' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define('AUTH_KEY',         'C-(ElRB[a/k`uaMtmDY-,a~|5Upg]}X?On}@z[v0u8F %n2l4n~ks.ViFp4WUa:X');
define('SECURE_AUTH_KEY',  '!{DAm%s&N}Bae^i~n|}e+P>?42_v.O02]o}Y+nzz2+o4U*m:$<Q5eLn^~j8Dn>/2');
define('LOGGED_IN_KEY',    'w@;NK||r]~jjzN<bzzDd9~sIWv/Y2-@H{5BO[&^XMkR9SkG_c>; +GN,S;MaUonF');
define('NONCE_KEY',        '!IK-vi>8;5hP]~~ew(dInzaFP%Hh2H)L1[2wbT8v:&F|hr.-?a1S{]@nG/o3kr++');
define('AUTH_SALT',        'FC:JbDv,`>3gA]z|wNz9O0od*)1aH ?%DEk}n7Ns;fat+2K ,0q#;iq;jD8J1k)Z');
define('SECURE_AUTH_SALT', 'kjE([6+s|<qyc{O{l@5-@8XX[-69ucw6Zi9M_;+cL[|`2zp=-bZcc(vnL@U%=O6a');
define('LOGGED_IN_SALT',   'X@t;onN|- tpG-*^$S&szyORy,x++rE>f*|gFT]c0amT`X&1V/Cm=%_`oe{Z+Fke');:
define('NONCE_SALT',       'hs|8svXNM}^v3M^0BV4hX+)&20V>,/EA5#,S~k#q=_vdB+E^@7Ru}`I}S<*6{6/3');
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
define( 'WP_DEBUG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
