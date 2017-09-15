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
define('DB_NAME', 'planting2');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */

define('AUTH_KEY',         '/0hAs.kN+qFKXqehmkt6g>Fw`}z.TDBdGg$s!|AOUsXO?U}3]AS;+r)L]<@MCVe(');
define('SECURE_AUTH_KEY',  'e&J(f|mXK1nvHGDm:*pvT@v@6oF4p?Ohw2ISlR)Iq-9!0=$ q^C|#t!K1QZu&q;/');
define('LOGGED_IN_KEY',    'jix/^v<RA].@pt QL!(MZAY|Y6&y|]DbaZc.|0b{ydqSjK:EunQsGj!]vt#p+tlY');
define('NONCE_KEY',        'dMT</oUBT!|.Dr5oZ^|wPixV**~@g?8azC$]+xXPb+H{RF!oc94%yAq`|Q52O:P[');
define('AUTH_SALT',        '61deF.bG{k&i!E }h^xM^.B2RA,NCxI@26Bv{. `$Cfe2-<4?rR0Cu9<Xu]GJ.xW');
define('SECURE_AUTH_SALT', 'iJl+_3Kp<n3e1n.}i(C3}un(gEsaKa{XQ>Y;7~tMSlrc)1E-B+YH3XR9(Ld%itB8');
define('LOGGED_IN_SALT',   'Y .d+PmIU5=;wMFGVrrkkn4ONLY;vKNdt,F}5-1p[!R|ENiuc-dYrY1|-rk9OCvU');
define('NONCE_SALT',       '{PPH(}txnB,v5RiYaLDIU}(#qhdWRL,_J)wUe1ss@,Ivjlm:Fs2hE2p{MZYqG4/r');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
define('WP_DEBUG', true);
define('WP_DEBUG_LOG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

define('FS_METHOD', 'direct');
define('JWT_AUTH_SECRET_KEY', '`=xof>dT[~ 1&D||s/.j(|!ppBU-D}7~<R7.c%l;2SQFKULz#wD4F7$:3L+4e+Jp');
define('JWT_AUTH_CORS_ENABLE', true);
