<?php
        while (have_posts()): the_post(); ?>

            <h1 class="text-center primario"><?php the_title(); ?></h1>

            <?php if (has_post_thumbnail()):
                the_post_thumbnail();
                else:
                
                endif;
            ?>

            <?php 
            // revisar si el custom postype es clases
                if(get_post_type() === 'gymfitness_clases'){
                    $hora_inicio = get_field('hora_inicio');
                    $hora_fin = get_field('hora_fin');
                    $dias_clase = get_field('dias_clase');?>
                  <p class='informacion-clase'> <?php  echo $dias_clase." - ".$hora_inicio." - ".$hora_fin." horas";?></p>
            <?php    } ?>


            <p><?php the_content(); ?></p>

        <?php endwhile; ?>