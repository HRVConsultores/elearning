<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<?php 

if ($breadcrumb['modulo']['num'] == 1) {
	switch ($breadcrumb['modulo']['title']) {
    case 'Objetivo 1':
        $objetivo = "Conocer los antecedentes históricos del programa DFWP.";
        break;
    case 'Objetivo 2':
        $objetivo = "Conocer el Programa DFWP.";
        break;
    case 'Objetivo 3':
        $objetivo = "Conocer las funciones de los colectores.";
        break;
	case 'Objetivo 4':
        $objetivo = "Conocer conceptos y definiciones del procedimiento de testeo.";
        break;
	case 'Objetivo 5':
       	$objetivo = "Identificar características propias de las drogas y alcohol.";
        break;
	}	
} elseif ($breadcrumb['modulo']['num'] == 2) {
	switch ($breadcrumb['modulo']['title']) {
    case 'Objetivo 1':
        $objetivo = "Identificar tiempos de permanencia de sustancias en el organismo.";
        break;
    case 'Objetivo 2':
        $objetivo = "Identificar sustancias que pueden entregar resultados falsos positivos.";
        break;
    case 'Objetivo 3':
        $objetivo = "Conocer las técnicas de análisis de las drogas.";
        break;
	case 'Objetivo 4':
        $objetivo = "Identificar fluidos y tipos de muestras para detectar el consumo.";
        break;
	case 'Objetivo 5':
       	$objetivo = "Identificar tipos de testeos laborales de A&D.";
        break;
	case 'Objetivo 6':
       	$objetivo = "Conocer los tipos de selección de la muestra de trabajadores.";
        break;
	case 'Objetivo 7':
       	$objetivo = "Conocer la normativa legal vigente en el país.";
        break;
	}		
}elseif ($breadcrumb['modulo']['num'] == 3) {
	switch ($breadcrumb['modulo']['title']) {
    case 'Objetivo 1':
        $objetivo = "Conocer el Protocolo de testeo de Global Partners.";
        break;
    case 'Objetivo 2':
        $objetivo = "Conocer los registros del protocolo de testeo de A&D.";
        break;
	case 'Objetivo 1 y Objetivo 2':
        $objetivo = "Conocer el Protocolo de testeo de Global Partners / Conocer los registros del protocolo de testeo de A&D.";
        break;
	}	
}elseif ($breadcrumb['modulo']['num'] == 4) {
	switch ($breadcrumb['modulo']['title']) {
    case 'Objetivo 1':
        $objetivo = "Conocer alteraciones fisiológicas en la toma de muestra de orina.";
        break;
    case 'Objetivo 2':
        $objetivo = "Conocer manejo medio ambiental de los residuos del test de A&D.";
        break;
    case 'Objetivo 3':
        $objetivo = "Conocer los equipos e instrumentos de testeo de A&D.";
        break;
	}		
}
?>
<?php $this->load->view('template/header'); ?>
    <body>
        <?php $this->load->view('include/analytics'); ?>
        <div id="wrapper" align="center">
            <div id="cuerpo">        
                <div id="header">
                    <img class="logo" src="<?php echo base_url(IMAGES_C."logos/logo.png") ?>" width="462" height="55" alt="Toma de muestra para detectar consumo de sustancias" />
                    <?php $this->load->view('template/nav_superior'); ?>
            </div>      
                
                <div id="breadcrumbs" style="background-color: #E7F7E1;">
                    <p><?php echo $this->ion_auth->logged_in()?'Usuario: '.$this->session->userdata('email'):''; ?>
                    /
                    <?php echo $this->ion_auth->logged_in()?anchor('auth/logout','Cerrar sesión'):'' ?><p/>                    
                </div>  
                <div id="breadcrumbs">
                    <?php echo $debug?$pagina:''; ?>                    
                    <p><span style="float: left;">
					<?php echo anchor('home/', 'Inicio'); ?> 
					<?php 
					if ($breadcrumb['modulo']['num'] != 'Examen') { ?>  
                    	&gt; <?php echo anchor('home/pag/'.$breadcrumb['modulo']['indice'], 'Unidad '.$breadcrumb['modulo']['num']); 
					}
					?> 
					<?php 
					if ($breadcrumb['unidad']['num'] != 0) { 
						echo "&gt;".anchor('home/pag/'.$breadcrumb['unidad']['indice'], 'Unidad '.$breadcrumb['unidad']['num']); 
					} 
					?>
                    <?php if (!empty($breadcrumb['modulo']['title'])) { ?>
                    > 
					<button type="button" class="btn btn-lg btn-danger" data-toggle="popover" title="<?php echo $breadcrumb['modulo']['title'];?>" data-content="<?php echo $objetivo ; ?>" style="line-height: 11px; font-size: 12px; margin-left: 5px;"><?php echo $breadcrumb['modulo']['title']; ?></button>
					<?php } ?>
                    </span>
					<?php if($type == 'unidad') { ?> Página <?php echo $breadcrumb['pagina'] ?> / <?php echo $breadcrumb['cantidad'] ?><?php } ?>
                    </p>
                </div>
                <?php $this->load->view($pagina); ?>                
                <?php if($type == 'unidad') { ?>
                <div>
                <span class="label label-success">Avance de la unidad:</span>     
                <br /><br />
                <div class="progress">
                  <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="<?php echo $percentage; ?>" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo $percentage; ?>%">
                    <span class="sr-only"><?php echo $percentage; ?>%</span>
                  </div>
                </div>  
                </div>    
                <?php } ?>
            </div> 
            <?php $this->load->view('template/footer_int'); ?>            
        </div>
    </body>
</html>
<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover({
        placement : 'right'
    });
});
</script>

