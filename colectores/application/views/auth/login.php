<div id="showcase">
	<div class="header05">
	  <div class="mapa"></div>
	  <h1>"Toma de Muestra para detectar <br />consumo de alcohol y drogas"</h1>
	</div>
</div>
<div id="infomenu">
	<div id='login'>
		<h4>Ingreso Participantes</h4>
        
	<?php echo form_open("auth/login");?>      
        <div class = "login_item">
          <label for="identity">Usuario:</label>
          <?php echo form_input($identity);?>
        </div>
        <div class = "login_item">
          <label for="password">Contrase&ntilde;a:</label>
          <?php echo form_input($password);?>
        </div>        
		<div id="ingresar">
			<?php echo form_submit('submit', 'Ingresar', 'class="boton_login"');?>
		</div>     
		<div id="ingresar">
			<?php echo anchor(HRV,'¿Olvidó su contraseña?','target="_blank"');?>
		</div>     
      <?php echo form_close();?>
      
  </div>
</div>
<div id="mainmenu">
	<div class="login">
	 	<p><strong>Requerimientos T&eacute;cnicos</strong></p>
		<p>Los siguientes requerimientos t&eacute;cnicos son necesarios para poder desarrollar correctamente el curso:</p>
			<ol id="requerimientos">
				<li>Navegador web Internet Explorer 9 o compatible o superior, &oacute; Mozilla Firefox 3 o compatible o superior, <br>con <a href="http://www.google.com/#q=activar+javascript" target="_blank">JavaScript activado</a> y <a href="http://get.adobe.com/flashplayer/" target="_blank">Adobe Flash Player</a> instalado.</li>
				<li>Resoluci&oacute;n de pantalla de al menos 1024x768 pixeles (ancho por alto).</li>
				<li>Lector de documentos PDF.</li>
			</ol>
	</div>
</div>
<div id="" class="simple_overlay">
	<h1>Mensaje del Sistema</h1>
	<p><?php echo $message; ?></p>
</div>
<script type="text/javascript">
	$(function(){
		$('.simple_overlay').overlay({
			load: <?php echo $message?'true':'false'; ?>
		});
	});
</script>