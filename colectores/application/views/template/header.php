<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Curso Colectores: Toma de muestra para detectar consumo de sustancias</title>
    
   
   <link href='http://fonts.googleapis.com/css?family=Roboto:300,700,400' rel='stylesheet' type='text/css'>      
        
    <!-- Bootstrap CSS -->
    <link href="<?php echo base_url() ?>resources/bootstrap/docs/assets/css/docs.css" rel="stylesheet">
    <link href="<?php echo base_url() ?>resources/bootstrap/docs/assets/css/bootstrap.css" rel="stylesheet">
    <link href="<?php echo base_url() ?>resources/bootstrap/docs/assets/css/bootstrap-responsive.css" rel="stylesheet">
    <!-- End Bootstrap CSS -->
    
    <link href="<?php echo base_url() ?>resources/css/css.css" rel="stylesheet" type="text/css" />   
    
    <script type="text/javascript" src="<?php echo base_url() ?>resources/js/jquery.js"></script>
	<script type="text/javascript" src="<?php echo base_url() ?>resources/js/jquery.tools.min.js"></script>

	<script type="text/javascript" src="<?php echo base_url() ?>resources/js/jquery-ui-1.8.9.custom.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url() ?>resources/js/template.js"></script>
    <script type="text/javascript" src="<?php echo base_url() ?>resources/js/swfobject_modified.js"></script>
    <?php if(isset($ev_css)): ?>
		<script type="text/javascript" src="<?php echo base_url() ?>resources/js/ev/<?php echo $ev_js ?>"></script>
	<?php endif; ?>
    <link href="<?php echo base_url() ?>resources/css/start/jquery-ui-1.8.9.custom.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url().CSS ?>css_overlay.css" rel="stylesheet" type="text/css" />
    <?php if(isset($ev_js)): ?><link href="<?php echo base_url().CSS.'ev/'.$ev_css ?>" rel="stylesheet" type="text/css" /><?php endif; ?>

	<script type="text/javascript">
    jQuery(document).ready(function($) {
        $('#backlink').hide();
        navigationLocation('<?php echo site_url() ?>',  <?php echo isset($navigation)?$navigation:0 ?>);
        adjustHeight();
        $('a#b2[title]').tooltip({position:"bottom left",opacity:0.9,tipClass:'navtip'});
        $("a[rel]").overlay({mask: '#ccc'});
    });
    </script>
    
    <style>
     .popover-all {
	  position: absolute;
	  top: 0;
	  left: 0;
	  z-index: 1010;
	  display: none;
	  padding: 5px;
	  
	}
	.popover-all.bottom {
	  margin-top: 5px ;
	}
	
	.popover-all.bottom .popover-arrow {
	  top: 0;
	  left: 50%;
	  margin-left: -5px ;
	  border-left: 5px solid transparent ;
	  border-right: 5px solid transparent ;
	  border-bottom: 5px solid #000000 ;
	}
	
	.popover-all .popover-arrow {
	  position: absolute;
	  width: 0;
	  height: 0;
	}
	
	.popover-inner {
	  padding: 3px;
	  width: 200000px;
	  overflow: hidden;
	  background: #000000;
	  background: rgba(0, 0, 0, 0.8);
	  -webkit-border-radius: 6px;
	  -moz-border-radius: 6px;
	  border-radius: 6px;
	  -webkit-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
	  -moz-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
	  box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
	}
	.popover-title {
	  padding: 8px 14px;
	  margin: 0;
	  font-size: 14px;
	  font-weight: normal;
	  line-height: 18px;
	  background-color: #f7f7f7;
	  border-bottom: 1px solid #ebebeb;
	  -webkit-border-radius: 5px 5px 0 0;
	     -moz-border-radius: 5px 5px 0 0;
	          border-radius: 5px 5px 0 0;
	
	}
	
	.popover-content {
	  padding: 9px 14px;
	  background-color: #ffffff;
	  -webkit-border-radius: 0 0 3px 3px;
	  -moz-border-radius: 0 0 3px 3px;
	  border-radius: 0 0 3px 3px;
	  -webkit-background-clip: padding-box;
	  -moz-background-clip: padding-box;
	  background-clip: padding-box;
	}
 
   </style>
   
   <!-- shadowbox -->
   <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>resources/shadowbox/shadowbox.css">
   <script type="text/javascript" src="<?php echo base_url() ?>resources/shadowbox/shadowbox.js"></script>   
   <script type="text/javascript">
		Shadowbox.init({
			language: 'es',
			players:  ['img', 'html', 'iframe', 'qt', 'wmp', 'swf', 'flv']
		});
	</script>
    <!-- End shadowbox -->
   
   <!-- Carrousel Header -->
   <script language="JavaScript">   
		var theImages = new Array()
		theImages[0] = '<?php echo base_url() ?>resources/img_curso/carrousel/header-00.jpg'
		theImages[1] = '<?php echo base_url() ?>resources/img_curso/carrousel/header-01.jpg'
		theImages[2] = '<?php echo base_url() ?>resources/img_curso/carrousel/header-02.jpg'
		theImages[3] = '<?php echo base_url() ?>resources/img_curso/carrousel/header-03.jpg'
		theImages[4] = '<?php echo base_url() ?>resources/img_curso/carrousel/header-04.jpg'
		theImages[4] = '<?php echo base_url() ?>resources/img_curso/carrousel/header-05.jpg'
		
		var j = 0
		var p = theImages.length;
		var preBuffer = new Array()
		for (i = 0; i < p; i++){
			preBuffer[i] = new Image()
			preBuffer[i].src = theImages[i]
		}
		var whichImage = Math.round(Math.random()*(p-1));
		
		function showImage(){
			document.write('<img src="'+theImages[whichImage]+'">');
		}
	</script>
    <!-- End Carrousel Header -->    
    
    <!-- Bootstrap JS -->
    <script src="<?php echo base_url() ?>resources/bootstrap/docs/assets/js/jquery.js"></script> 
    <script src="<?php echo base_url() ?>resources/bootstrap/docs/assets/js/bootstrap.js"></script> 
    <script src="<?php echo base_url() ?>resources/bootstrap/docs/assets/js/bootstrap-transition.js"></script> 
    <script src="<?php echo base_url() ?>resources/bootstrap/docs/assets/js/bootstrap-alert.js"></script> 
    <script src="<?php echo base_url() ?>resources/bootstrap/docs/assets/js/bootstrap-modal.js"></script> 
    <script src="<?php echo base_url() ?>resources/bootstrap/docs/assets/js/bootstrap-dropdown.js"></script> 
    <script src="<?php echo base_url() ?>resources/bootstrap/docs/assets/js/bootstrap-scrollspy.js"></script> 
    <script src="<?php echo base_url() ?>resources/bootstrap/docs/assets/js/bootstrap-tab.js"></script> 
    <script src="<?php echo base_url() ?>resources/bootstrap/docs/assets/js/bootstrap-tooltip.js"></script> 
    <script src="<?php echo base_url() ?>resources/bootstrap/docs/assets/js/bootstrap-popover.js"></script> 
    <script src="<?php echo base_url() ?>resources/bootstrap/docs/assets/js/bootstrap-button.js"></script> 
    <script src="<?php echo base_url() ?>resources/bootstrap/docs/assets/js/bootstrap-collapse.js"></script> 
    <script src="<?php echo base_url() ?>resources/bootstrap/docs/assets/js/bootstrap-carousel.js"></script> 
    <script src="<?php echo base_url() ?>resources/bootstrap/docs/assets/js/bootstrap-typeahead.js"></script> 
    <!-- Bootstrap JS -->
</head>