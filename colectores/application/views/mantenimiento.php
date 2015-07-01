<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Curso</title>

<link href="<?php echo base_url() ?>resources/css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<?php echo base_url() ?>resources/js/jquery.js"></script>
<script type="text/javascript" src="<?php echo base_url() ?>resources/js/jquery.tools.min.js"></script>

<script type="text/javascript" src="<?php echo base_url() ?>resources/js/jquery-ui-1.8.9.custom.min.js"></script>
<link href="<?php echo base_url() ?>resources/css/start/jquery-ui-1.8.9.custom.css" rel="stylesheet" type="text/css" />
<style type="text/css">
#a01, #a02 {
	opacity:0;
}
</style>
<script type="text/javascript">
$.noConflict();
jQuery(document).ready(function($) {
	$('#backlink').hide();
	$('#a01,#a02').animate({opacity: 1}, 500);
	$("#accordion").accordion({autoHeight: false,
			collapsible:true,
			active: false});
	$('a#b1[title],a#b2[title]').tooltip({ position: "bottom left", opacity: 0.9, tipClass: 'navtip'});
	$('.openit[rel]').overlay({top:10,mask:{color:'#000',loadSpeed:200,opacity:0.8},closeOnClick:false});
});
</script>

</head>
<body>
	<body><?php $this->load->view('include/analytics'); ?>
<div class="container">
	<div class="content">
		<div id="logout">
			<?php if($this->ion_auth->is_admin()){echo anchor('auth', 'Admin');} ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<?php echo anchor('auth/logout', 'Cerrar sesion'); ?>
		</div>
		<table width="780" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="69"><img src="<?php echo base_url() ?>resources/img/template/2.png" width="780" height="69" /></td>
			</tr>
			<tr>
				<td id="mainCell"><div id="nav" class="fltrt"></div>
					<div id="title">Curso&nbsp;de Gestión de Riesgos Climáticos Vinculados al Sector Silvoagropecuario</div>
					<br /><br />
					<div style="font-size:16px;width:450px;margin:0px auto;">
						<p>Estimado usuarios, lamentamos informarles que el curso estará en mantenimiento por algunos días. </p>
						<p>Este proceso permitirá mejorar algunos de los contenidos.</p>
						<p>Por su compresión, muchas gracias.</p>
					</div>
					<br /><br />
					</td>
			</tr>
			<tr>
				<td height="93" style="background: url(<?php echo base_url() ?>resources/img/template/4.png) no-repeat 0 0;" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="backlink">&nbsp;<a href="index.html">Volver al home</a></span></td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>
