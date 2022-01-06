<?php 
/*

Plugin Name: Gym Fitness - Post Types
Plugin URI:
Description: Anhade post types al sitio gym fitness
version: 1.0.0
Author: Marcos Ledezma
AUthor URI: 
Text Domain: GymFitness
*/

if(!defined('ABSPATH')) die();


// Registrar Custom Post Type
function gymfitness_clases_post_type() {

	$labels = array(
		'name'                  => _x( 'Clases', 'Post Type General Name', 'gymfitness' ),
		'singular_name'         => _x( 'Clase', 'Post Type Singular Name', 'gymfitness' ),
		'menu_name'             => __( 'Clases', 'gymfitness' ),
		'name_admin_bar'        => __( 'Clase', 'gymfitness' ),
		'archives'              => __( 'Archivo', 'gymfitness' ),
		'attributes'            => __( 'Atributos', 'GymFitness' ),
		'parent_item_colon'     => __( 'Clase Padre', 'GymFitness' ),
		'all_items'             => __( 'Todas Las Clases', 'GymFitness' ),
		'add_new_item'          => __( 'Agregar Clase', 'GymFitness' ),
		'add_new'               => __( 'Agregar Clase', 'GymFitness' ),
		'new_item'              => __( 'Nueva Clase', 'GymFitness' ),
		'edit_item'             => __( 'Editar Clase', 'GymFitness' ),
		'update_item'           => __( 'Actualizar Clase', 'GymFitness' ),
		'view_item'             => __( 'Ver Clase', 'GymFitness' ),
		'view_items'            => __( 'Ver Clases', 'GymFitness' ),
		'search_items'          => __( 'Buscar Clase', 'GymFitness' ),
		'not_found'             => __( 'No Encontrado', 'GymFitness' ),
		'not_found_in_trash'    => __( 'No Encontrado en Papelera', 'GymFitness' ),
		'featured_image'        => __( 'Imagen Destacada', 'GymFitness' ),
		'set_featured_image'    => __( 'Guardar Imagen destacada', 'GymFitness' ),
		'remove_featured_image' => __( 'Eliminar Imagen destacada', 'GymFitness' ),
		'use_featured_image'    => __( 'Utilizar como Imagen Destacada', 'GymFitness' ),
		'insert_into_item'      => __( 'Insertar en Clase', 'GymFitness' ),
		'uploaded_to_this_item' => __( 'Agregado en Clase', 'GymFitness' ),
		'items_list'            => __( 'Lista de Clases', 'GymFitness' ),
		'items_list_navigation' => __( 'Navegación de Clases', 'GymFitness' ),
		'filter_items_list'     => __( 'Filtrar Clases', 'GymFitness' ),
	);
	$args = array(
		'label'                 => __( 'Clase', 'GymFitness' ),
		'description'           => __( 'Clases para el Sitio Web', 'GymFitness' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'editor', 'thumbnail' ),
		'hierarchical'          => true,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
        'menu_position'         => 6,
        'menu_icon'             => 'dashicons-welcome-learn-more',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'gymfitness_clases', $args );

}
add_action( 'init', 'gymfitness_clases_post_type', 0 );

// Register Custom Post Type
function gymfitness_instructores() {

	$labels = array(
		'name'                  => _x( 'Instructores', 'Post Type General Name', 'gymfitness' ),
		'singular_name'         => _x( 'Instructor', 'Post Type Singular Name', 'gymfitness' ),
		'menu_name'             => __( 'Instructores', 'gymfitness' ),
		'name_admin_bar'        => __( 'Instructor', 'gymfitness' ),
		'archives'              => __( 'Archivo', 'gymfitness' ),
		'attributes'            => __( 'Atributos', 'gymfitness' ),
		'parent_item_colon'     => __( 'Instructor Padre', 'gymfitness' ),
		'all_items'             => __( 'Todas Las Instructores', 'gymfitness' ),
		'add_new_item'          => __( 'Agregar Instructor', 'gymfitness' ),
		'add_new'               => __( 'Agregar Instructor', 'gymfitness' ),
		'new_item'              => __( 'Nueva Instructor', 'gymfitness' ),
		'edit_item'             => __( 'Editar Instructor', 'gymfitness' ),
		'update_item'           => __( 'Actualizar Instructor', 'gymfitness' ),
		'view_item'             => __( 'Ver Instructor', 'gymfitness' ),
		'view_items'            => __( 'Ver Instructores', 'gymfitness' ),
		'search_items'          => __( 'Buscar Instructor', 'gymfitness' ),
		'not_found'             => __( 'No Encontrado', 'gymfitness' ),
		'not_found_in_trash'    => __( 'No Encontrado en Papelera', 'gymfitness' ),
		'featured_image'        => __( 'Imagen Destacada', 'gymfitness' ),
		'set_featured_image'    => __( 'Guardar Imagen destacada', 'gymfitness' ),
		'remove_featured_image' => __( 'Eliminar Imagen destacada', 'gymfitness' ),
		'use_featured_image'    => __( 'Utilizar como Imagen Destacada', 'gymfitness' ),
		'insert_into_item'      => __( 'Insertar en Instructor', 'gymfitness' ),
		'uploaded_to_this_item' => __( 'Agregado en Instructor', 'gymfitness' ),
		'items_list'            => __( 'Lista de Instructores', 'gymfitness' ),
		'items_list_navigation' => __( 'Navegación de Instructores', 'gymfitness' ),
		'filter_items_list'     => __( 'Filtrar Instructores', 'gymfitness' ),
	);
	$args = array(
		'label'                 => __( 'Instructores', 'gymfitness' ),
		'description'           => __( 'Instructores para el Sitio Web', 'gymfitness' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'editor', 'thumbnail' ),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
        'menu_position'         => 7,
        'menu_icon'             => 'dashicons-admin-users',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => false,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'instructores', $args );

}
add_action( 'init', 'gymfitness_instructores', 0 );

?>