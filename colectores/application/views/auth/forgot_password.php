<h1>Recuperación de Contraseña</h1>
<p>Favor de ingresar si correo para que le podamos enviar su nueva contraseña.</p>
<?php $this->load->view('auth/info_message') ?>
<?php echo form_open("auth/forgot_password");?>

      <p>Correo:<br />
      <?php echo form_input($email);?>
      </p>
      
      <p><?php echo form_submit('submit', 'Enviar');?></p>
      
<?php echo form_close();?>