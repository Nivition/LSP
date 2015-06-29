<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clefs secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur 
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C'est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d'installation. Vous n'avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'lsp');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'root');

/** Adresse de l'hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8');

/** Type de collation de la base de données. 
  * N'y touchez que si vous savez ce que vous faites. 
  */
define('DB_COLLATE', '');

/**#@+
 * Clefs uniques d'authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant 
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n'importe quel moment, afin d'invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'sW~-CYE7rg:y6v-F-z;-Tw-i3U>+Hl_U|xis,uA+}4B&4i{DeIF`nFx7Ls`>V59?');
define('SECURE_AUTH_KEY',  'U+gR&I72XRG GN<DB$Qj>6v*8Pg :hcD@seZ$K$g[Gy%l<|^xyo.E32c{52%58[_');
define('LOGGED_IN_KEY',    '%]ZO/<$J2OpXxx{D6n+&4fEPni| }gY{a*id{EDf,Ksh|+G@G`!+!}}+B0*:W}q-');
define('NONCE_KEY',        'u9_JK3U%7xIo*-`+[w/a(*i;:9xl_GZiR*RBc[-#+y0BE+~-8O7&j:l?^5`huY9Y');
define('AUTH_SALT',        'tTwz <<2t%|6)t{LS(KTBi@+ro#Jli6S!c7T%D-FpJ/sGhbWFY4}n>!vn(6)]00o');
define('SECURE_AUTH_SALT', 'VdJpM8#m?(SF|<V0sz5jM]=tS_RG|zkTp|AC1D4b7Xq=9|KkkCOVXsKTRz-v!a] ');
define('LOGGED_IN_SALT',   'h)UyT_.TZYMu`{$u96M!Zk !=?O!wv:CWPESn=-3eQ$qbz{<j.z2Ds.$@7@oPqDc');
define('NONCE_SALT',       'ruN02+{O#pZ65zLnZL&Y95{ G?k-?rY|Q]SHMD^6E|}3A0z<t[,5y<y~}DV@|+|A');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique. 
 * N'utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés!
 */
$table_prefix  = 'wp_';

/** 
 * Pour les développeurs : le mode deboguage de WordPress.
 * 
 * En passant la valeur suivante à "true", vous activez l'affichage des
 * notifications d'erreurs pendant votre essais.
 * Il est fortemment recommandé que les développeurs d'extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de 
 * développement.
 */ 
define('WP_DEBUG', false); 

/* C'est tout, ne touchez pas à ce qui suit ! Bon blogging ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');