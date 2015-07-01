<div id="principal">
	<!--
	<?php if($permmitir_examen): ?>
		<?php echo anchor('home/examen', 'Rendir el examen final del curso'); ?>
	<?php endif; ?>
	-->
	<?php $i=1; foreach($resultados as $r): ?>
  <div class="slidediv">
		<h1>Resultados Examen Final (<?php echo $i++.'/'.INTENTOS_PERMITIDOS;?>)</h1>
		<table border="0" cellspacing="0" cellpadding="4" class="table examen">
		  <tr>
			<th width="32%" valign="top">Fecha de Entrega:</th>
			<td width="68%" valign="top"><?php echo $r->fecha; ?></td>
		  </tr>
		  <tr>
			<th valign="top">Puntaje obtenido:</th>
			<td align="center" valign="top"><strong><?php echo $r->score; ?>/<?php echo TOTAL_PUNTOS ?> puntos.</strong></td>
		  </tr>
		  <tr>
			<th valign="top">Resultado evaluaci&oacute;n:</th>
			<td align="center" valign="top">
				<strong><?php echo $r->estado; ?></strong><br />
				<?php if($r->estado == 'Aprobado'): ?>
					<?php echo anchor('home/certificado', 'Descargar mi certificado de aprobación', 'class="popup"'); ?>
				<?php endif; ?>

			</td>
		  </tr>
		</table><br />
		<table border="0" cellspacing="0" cellpadding="4" class="table examen">
		  <?php $counter=0; foreach($r->preguntas as $p){ ?>
		  <?php if($counter%2==0){ ?><tr> <?php } ?>
			  <th width="25%" valign="top">Pregunta <?php echo $p['q']; ?>:</th>
			  <td width="25%" valign="top"><?php echo $p['p']; ?>/<?php echo $p['t']; ?> puntos.</td>
		  <?php if($counter++%2!=0){ ?></tr> <?php } ?>
		  <?php } ?>
		  <th valign="top">Puntaje total:</th>
			<td align="center" valign="top"><strong><?php echo $r->score; ?>/<?php echo TOTAL_PUNTOS ?>  puntos.</strong></td>
		  </tr>
		</table>
	</div>
<?php endforeach; ?>
        
