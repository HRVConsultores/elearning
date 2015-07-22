<div class="sbox">
	<div class="sbox-title">
			
				<h3 ><?php echo CNF_APPNAME ;?></h3>
				
	</div>
	<div class="sbox-content">
	<div class="text-center">
		<img src="<?php echo base_url().'sximo/themes/mango/img/logo.png';?>" width="90" height="90" />
	</div>	
	<?php echo $this->session->flashdata('message');?>	
		<ul class="parsley-error-list">
			<?php echo $this->session->flashdata('errors');?>
		</ul>
	<form class="form-signup" action="<?php echo site_url('user/create');?>" method="post">
	
	<div class="form-group has-feedback">
		<label> <?php echo $this->lang->line('core.firstname'); ?> <span class="asterix">*</span> </label>
		<?php echo form_input(array('name'=>'firstname','placeholder'=> $this->lang->line('core.firstname'),'required'=>'true','class'=>'form-control'));?>
		<i class="icon-users form-control-feedback"></i>
	</div>
	
	<div class="form-group has-feedback">
		<label> <?php echo $this->lang->line('core.lastname'); ?> <span class="asterix">*</span></label><br />
		<?php echo form_input(array('name'=>'lastname','placeholder'=> $this->lang->line('core.lastname'),'required'=>'true','class'=>'form-control'));?>
		<i class="icon-users form-control-feedback"></i>
	</div>
	
	<div class="form-group has-feedback">
		<label> <?php echo $this->lang->line('core.email'); ?> <span class="asterix">*</span></label>
		<?php echo form_input(array('name'=>'email','placeholder'=> $this->lang->line('core.email'),'required'=>'true','class'=>'form-control'));?>
		<i class="icon-envelop form-control-feedback"></i>
	</div>
	
	<div class="form-group has-feedback">
		<label> <?php echo $this->lang->line('core.password'); ?> <span class="asterix">*</span></label>
		<?php echo form_password(array('name'=>'password','placeholder'=> $this->lang->line('core.password'),'required'=>'true','class'=>'form-control'));?>
		<i class="icon-lock form-control-feedback"></i>
	</div>
	
	<div class="form-group has-feedback">
		<label><?php echo $this->lang->line('core.repassword'); ?> <span class="asterix">*</span></label>
		<?php echo form_password(array('name'=>'password_confirmation','placeholder'=> $this->lang->line('core.repassword'),'required'=>'true','class'=>'form-control'));?>
		<i class="icon-lock form-control-feedback"></i>
	</div>
			

      <div class="row form-actions">
        <div class="col-sm-12">
          <button type="submit" style="width:100%;" class="btn btn-primary pull-right"><i class="icon-user-plus"></i> <?php echo $this->lang->line('core.signup'); ?></button>
       </div>
      </div>
	  <p style="padding:10px 0" class="text-center">
	  <a href="<?php echo site_url('user/login');?>"> <?php echo $this->lang->line('core.lg_backlogin'); ?> </a> | <a href="<?php echo site_url();?>"> <?php echo $this->lang->line('core.lg_backsite'); ?> </a> 
   		</p>
 </form>
 </div>
</div> 
