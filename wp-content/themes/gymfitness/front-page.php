<?php get_header('front'); ?>

<section class="bienvenida text-center seccion">
    <h2 class="primario"><?php the_field('encabezado_bienvenida'); ?></h2>
    <p><?php the_field('texto_bienvenida'); ?></p>
</section>

<div class="seccion-areas">
    <ul class="contenedor-areas">
        <li class="area">
            <?php
                $area_1 = get_field('area_1');
                $imagen = wp_get_attachment_image_src($area_1['area_imagen'], 'large')[0];
            ?>
            <img src="<?php echo esc_attr($imagen); ?>"/>
            <p><?php echo $area_1['area_texto']; ?></p>
        </li>
        <li class="area">
            <?php
                $area_2 = get_field('area_2');
                $imagen = wp_get_attachment_image_src($area_2['area_imagen'], 'large')[0];
            ?>
            <img src="<?php echo esc_attr($imagen); ?>"/>
            <p><?php echo $area_2['area_texto']; ?></p>
        </li>
        <li class="area">
            <?php
                $area_3 = get_field('area_3');
                $imagen = wp_get_attachment_image_src($area_3['area_imagen'], 'large')[0];
            ?>
            <img src="<?php echo esc_attr($imagen); ?>"/>
            <p><?php echo $area_3['area_texto']; ?></p>
        </li>
        <li class="area">
            <?php
                $area_4 = get_field('area_4');
                $imagen = wp_get_attachment_image_src($area_4['area_imagen'], 'large')[0];
            ?>
            <img src="<?php echo esc_attr($imagen); ?>"/>
            <p><?php echo $area_4['area_texto']; ?></p>
        </li>
    </ul>
</div>

<section class="clases">
    <div class="contenedor seccion">
        <h2 class="text-center primario">Nuestras clases</h2>
        <?php gymfitness_lista_clases(4); ?>
        <div class="contenedor-boton">
            <a href="<?php echo esc_url( get_permalink(get_page_by_title('Nuestras Clases'))); ?>" class="boton boton-primario">Ver todas las clases</a>
        </div>
    </div>
</section>

<section class="instructores">
    <div class="contenedor seccion">
        <h2 class="text-center primario">
            Nuestros Instructores
        </h2>
        <p class="text-center">
            Instructores profesionales que te ayudaran a lograr tus objetivos.
        </p>
        <ul class="listado-instructores">
            <?php
            $args = array(
                'post_type' => 'instructores',
                'posts_per_page' => 30
            );
            $instructores = new WP_Query($args);
            while($instructores->have_posts()): $instructores->the_post();
            ?>
            <li class="instructor">
                <?php the_post_thumbnail( 'large'); ?>
                <div class="contenido text-center">
                    <h3><?php the_title(); ?></h3>
                    <?php the_content(); ?>
                    <div class="especialidad">
                        <?php
                            $esp = get_field('especialidad');
                            foreach ($esp as $e): ?>
                                <span class="etiqueta"><?php echo esc_html($e); ?>, </span>
                            <?php endforeach; ?>
                        
                    </div>
                </div>
            </li>
            <?php endwhile; wp_reset_postdata(); ?>
        </ul>
    </div>
</section>

<?php get_footer(); ?>