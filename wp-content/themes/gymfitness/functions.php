<?php

/** Consultas reutilizables **/
require get_template_directory().'/inc/queries.php';

//cuando el tema es activado
function gymFitness_setup(){

    add_theme_support('post-thumbnails');
}
add_action( 'after_setup_theme','gymFitness_setup');

function gymfitness_menus(){
    register_nav_menus(array(
        'menu-principal'=>__('Menu Principal', 'GymFitness')

    ));
}

add_action('init', 'gymfitness_menus');

//Scripts y styles
function gymfitness_scripts_styles(){
    //la hoja de estilos principal
    if(is_page('contacto')):
        wp_enqueue_style('leaftletCSS','https://unpkg.com/leaflet@1.7.1/dist/leaflet.css',array(), '1.7.1');
    endif;
    wp_enqueue_style('normalize', get_template_directory_uri().'/css/normalize.css', array(), '8.0.1');
    wp_enqueue_style('style', get_stylesheet_uri(), array('normalize','googleFonts'), '1.0.1');
    wp_enqueue_style('googleFonts', 'https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&family=Raleway:wght@100;400;700;900&family=Staatliches&display=swap', array(),'1.0.0');
}
add_action('wp_enqueue_scripts', 'gymfitness_scripts_styles');

//Definir zona de widgets
function gymfitness_widgets() {
    register_sidebar( array(
        'name' => 'Sidebar 1',
        'id' => 'sidebar1',
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' =>'<h3>',
        'after_title' => '</h3>'
    ));
    register_sidebar( array(
        'name' => 'Sidebar 2',
        'id' => 'sidebar2',
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' =>'<h3 class="text-center primario">',
        'after_title' => '</h3>'
    ));

}
add_action( 'widgets_init', 'gymfitness_widgets');

// Deshabilitar el manejo de widgets desde el editor de bloques de Gutenberg
add_filter( 'gutenberg_use_widgets_block_editor', '__return_false', 100 );
 
// Deshabilitar el editor de bloques para el manejo de widgets
add_filter( 'use_widgets_block_editor', '__return_false' );

/**image hero */
function gymfitness_hero_image(){
    //vamos a obtener el id de la pagina principal
    $front_page_id = get_option('page_on_front');
    //obtener id de la imagen
    $id_imagen = get_field('imagen_hero',$front_page_id);
    //obtenemos la imagen
    $imagen = wp_get_attachment_image_src($id_imagen,'full')[0];
    //Style
    wp_register_style('custom',false);
    wp_enqueue_style('custom');
    $imagen_destacada_css = "
        body.home .site-header{
            background-image: linear-gradient( rgba(0,0,0,0.75), rgba(0,0,0,0.75)), url($imagen);
        }
    ";
    wp_add_inline_style('custom', $imagen_destacada_css);

}
add_action( 'init', 'gymfitness_hero_image');