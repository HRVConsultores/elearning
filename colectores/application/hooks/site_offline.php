<?php
 
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
 
/**
 * Description of site_offline
 *
 * @author admin
 */
class Site_Offline {
 
    function __construct() {

         
    }
 
    public function is_offline() {
        if (file_exists(APPPATH . 'config/config.php')) {
            include(APPPATH . 'config/config.php');
 
            if (isset($config['is_offline']) && $config['is_offline'] === TRUE) {
                $this->show_site_offline();
                exit;
            }
        }
    }
 
    private function show_site_offline() {
        if 
            (file_exists(APPPATH . 'config/constants.php')) 
            include(APPPATH . 'config/constants.php');

        $css1 = OFFLINE."tools/style.css";
        $css2 = OFFLINE."tools/960.css";

        $js1  = OFFLINE."js/cufon-yui.js";
        $js2  = OFFLINE."js/Adobe_Caslon_Pro_600.font.js";

        $img1 = OFFLINE."images/t.png";
        $img2 = OFFLINE."images/f.png";

       echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sitio en mantenimiento. Volveremos pronto.</title>
<link href="'.$css1.'" rel="stylesheet" type="text/css" />
<link href="'.$css2.'" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script> 
<script type="text/javascript" src="'.$js1.'"></script>
<script type="text/javascript" src="'.$js2.'"></script>
</head>
<body>
<div class="container_12" id="content">
    <h1>Núcleo de Capacitación en Políticas Públicas</h1>
    <h3>Lamentamos las molestias. <br />Sitio en mantenimiento. Volveremos pronto.</h3>
    <div class="main">
        <div class="mcontent">
            <div class="box mr20">
                <h2>Contáctenos</h2>
                <p>Phone : (56-2) 29232249<br/>
Email : <a href="#">RLC-NUCLEO@fao.org</a></p>
            </div>
            <div class="box mr20">
                <h2>Dirección</h2>
                <p>Av. Dag Hammarskjöld 3241, Vitacura, Santiago de Chile</p>                
            </div>
            <div class="box2">
                <h2>Síganos en</h2>
                <a href="https://twitter.com/CapacitacionFAO"><img src="'.$img1.'" alt=""/></a>
                <a href="https://www.facebook.com/UNFAO"><img src="'.$img2.'" alt=""/></a>                
            </div>          
        </div>
    </div>
</div>
</body>
</html>';
    } 
}
 
/* End of file site_offline.php */
/* Location: ./application/hooks/site_offline.php */