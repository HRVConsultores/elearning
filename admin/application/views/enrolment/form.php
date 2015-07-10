<div class="page-content row">
    <!-- Page header -->
<div class="page-header">
	<div class="page-title">
	<h3> <?php echo $pageTitle ?> <small><?php echo $pageNote ?></small></h3>
	</div>
	<ul class="breadcrumb">
		<li><a href="<?php echo site_url('dashboard') ?>"> Dashboard </a></li>
		<li><a href="<?php echo site_url('enrolment') ?>"><?php echo $pageTitle ?></a></li>
		<li class="active"> Form </li>
	</ul>  	  
</div>
 
 	<div class="page-content-wrapper m-t">
<div class="sbox animated fadeInRight">
	<div class="sbox-title"> <h4> <i class="fa fa-table"></i> <?php echo $pageTitle ;?> <small><?php echo $pageNote ;?></small></h4></div>
	<div class="sbox-content"> 	


		<?php echo $this->session->flashdata('message');?>
			<ul class="parsley-error-list">
				<?php echo $this->session->flashdata('errors');?>
			</ul>
		 <form action="<?php echo site_url('enrolment/save/'.$row['id']); ?>" class='form-horizontal' 
		 parsley-validate='true' novalidate='true' method="post" enctype="multipart/form-data" > 


<div class="col-md-12">
						<fieldset><legend> enrolment</legend>
									
								  <div class="form-group hidethis " style="display:none;">
									<label for="Id" class=" control-label col-md-4 text-left"> Id </label>
									<div class="col-md-8">
									  <input type='text' class='form-control' placeholder='' value='<?php echo $row['id'];?>' name='id'   /> <br />
									  <i> <small></small></i>
									 </div> 
								  </div> 					
								  <div class="form-group  " >
									<label for="Curso" class=" control-label col-md-4 text-left"> Curso <span class="asterix"> * </span></label>
									<div class="col-md-8">
									  <select name='courseId' rows='5' id='courseId' code='{$courseId}' 
							class='select2 '  required  ></select> <br />
									  <i> <small></small></i>
									 </div> 
								  </div> 					
								  <div class="form-group  " >
									<label for="Estudiante" class=" control-label col-md-4 text-left"> Estudiante <span class="asterix"> * </span></label>
									<div class="col-md-8">
									  <select name='sc_Student_id' rows='5' id='sc_Student_id' code='{$sc_Student_id}' 
							class='select2 '  required  ></select> <br />
									  <i> <small></small></i>
									 </div> 
								  </div> 					
								  <div class="form-group  " >
									<label for="Estado" class=" control-label col-md-4 text-left"> Estado <span class="asterix"> * </span></label>
									<div class="col-md-8">
									  
					<?php $enrolmentStatus = explode(',',$row['enrolmentStatus']);
					$enrolmentStatus_opt = array( 'Matriculado' => 'Matriculado' ,  'Desmatriculado' => 'Desmatriculado' , ); ?>
					<select name='enrolmentStatus' rows='5' required  class='select2 '  > 
						<?php 
						foreach($enrolmentStatus_opt as $key=>$val)
						{
							echo "<option  value ='$key' ".($row['enrolmentStatus'] == $key ? " selected='selected' " : '' ).">$val</option>"; 						
						}						
						?></select> <br />
									  <i> <small></small></i>
									 </div> 
								  </div> 					
								  <div class="form-group  " >
									<label for="Comentario" class=" control-label col-md-4 text-left"> Comentario </label>
									<div class="col-md-8">
									  <textarea name='comment' rows='2' id='editor' class='form-control markItUp '  
						 ><?php echo $row['comment'] ;?></textarea> <br />
									  <i> <small></small></i>
									 </div> 
								  </div> </fieldset>
			</div>
			
			
		
			<div style="clear:both"></div>	
				
 		<div class="toolbar-line text-center">		
			<input type="submit" name="apply" class="btn btn-info btn-sm" value="<?php echo $this->lang->line('core.btn_apply'); ?>" />
			<input type="submit" name="submit" class="btn btn-primary btn-sm" value="<?php echo $this->lang->line('core.sb_submit'); ?>" />
			<a href="<?php echo site_url('enrolment');?>" class="btn btn-sm btn-warning"><?php echo $this->lang->line('core.sb_cancel'); ?> </a>
 		</div>
			  		
		</form>

	</div>
	</div>
</div>		
</div>	
</div>
			 
<script type="text/javascript">
$(document).ready(function() { 

		$("#courseId").jCombo("<?php echo site_url('enrolment/comboselect?filter=sc_course:id:code|name') ?>",
		{  selected_value : '<?php echo $row["courseId"] ?>' });
		
		$("#sc_Student_id").jCombo("<?php echo site_url('enrolment/comboselect?filter=tb_users:id:id|first_name|last_name') ?>",
		{  selected_value : '<?php echo $row["sc_Student_id"] ?>' });
		 	 
});
</script>		 