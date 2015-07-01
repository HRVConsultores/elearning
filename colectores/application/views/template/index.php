<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<?php $this->load->view('template/header'); ?>
<body>
  <?php $this->load->view('include/analytics'); ?>
  <div id="wrapper" align="center">
    <div id="cuerpo">
      <div id="header"> 
        <img class="logo" src="<?php echo base_url(IMAGES_C."logos/logo.png") ?>" width="290" height="55" alt="Toma de muestra para detectar consumo de sustancias" />
        <?php $this->load->view('template/nav_superior'); ?>
      </div>
      <?php $this->load->view($pagina); ?>
      <?php $this->load->view('template/footer'); ?>
    </div>
  </div>
</body>
</html>
