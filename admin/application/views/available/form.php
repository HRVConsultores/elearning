<div class="page-content row">
    <!-- Page header -->
<div class="page-header">
	<div class="page-title">
	<h3> <?php echo $pageTitle ?> <small><?php echo $pageNote ?></small></h3>
	</div>
	<ul class="breadcrumb">
		<li><a href="<?php echo site_url('dashboard') ?>"> Dashboard </a></li>
		<li><a href="<?php echo site_url('available') ?>"><?php echo $pageTitle ?></a></li>
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
		 <form action="<?php echo site_url('available/save/'.$row['id']); ?>" class='form-horizontal' 
		 parsley-validate='true' novalidate='true' method="post" enctype="multipart/form-data" > 


<div class="col-md-12">
						<fieldset><legend> Available Courses</legend>
									
								  <div class="form-group  " >
									<label for="Id" class=" control-label col-md-4 text-left"> Id </label>
									<div class="col-md-8">
									  <textarea name='id' rows='2' id='id' class='form-control '  
				           ><?php echo $row['id'] ;?></textarea> <br />
									  <i> <small></small></i>
									 </div> 
								  </div> 					
								  <div class="form-group  " >
									<label for="Sc Student Id" class=" control-label col-md-4 text-left"> Sc Student Id </label>
									<div class="col-md-8">
									  <textarea name='sc_Student_id' rows='2' id='sc_Student_id' class='form-control '  
				           ><?php echo $row['sc_Student_id'] ;?></textarea> <br />
									  <i> <small></small></i>
									 </div> 
								  </div> 					
								  <div class="form-group  " >
									<label for="CourseId" class=" control-label col-md-4 text-left"> CourseId </label>
									<div class="col-md-8">
									  <textarea name='courseId' rows='2' id='courseId' class='form-control '  
				           ><?php echo $row['courseId'] ;?></textarea> <br />
									  <i> <small></small></i>
									 </div> 
								  </div> 					
								  <div class="form-group  " >
									<label for="Finalscore" class=" control-label col-md-4 text-left"> Finalscore </label>
									<div class="col-md-8">
									  <textarea name='finalscore' rows='2' id='finalscore' class='form-control '  
				           ><?php echo $row['finalscore'] ;?></textarea> <br />
									  <i> <small></small></i>
									 </div> 
								  </div> 					
								  <div class="form-group  " >
									<label for="Comment" class=" control-label col-md-4 text-left"> Comment </label>
									<div class="col-md-8">
									  <textarea name='comment' rows='2' id='comment' class='form-control '  
				           ><?php echo $row['comment'] ;?></textarea> <br />
									  <i> <small></small></i>
									 </div> 
								  </div> 					
								  <div class="form-group  " >
									<label for="EnrolmentStatus" class=" control-label col-md-4 text-left"> EnrolmentStatus </label>
									<div class="col-md-8">
									  <textarea name='enrolmentStatus' rows='2' id='enrolmentStatus' class='form-control '  
				           ><?php echo $row['enrolmentStatus'] ;?></textarea> <br />
									  <i> <small></small></i>
									 </div> 
								  </div> 					
								  <div class="form-group  " >
									<label for="Valid" class=" control-label col-md-4 text-left"> Valid </label>
									<div class="col-md-8">
									  <textarea name='valid' rows='2' id='valid' class='form-control '  
				           ><?php echo $row['valid'] ;?></textarea> <br />
									  <i> <small></small></i>
									 </div> 
								  </div> 					
								  <div class="form-group  " >
									<label for="Created At" class=" control-label col-md-4 text-left"> Created At </label>
									<div class="col-md-8">
									  <textarea name='created_at' rows='2' id='created_at' class='form-control '  
				           ><?php echo $row['created_at'] ;?></textarea> <br />
									  <i> <small></small></i>
									 </div> 
								  </div> 					
								  <div class="form-group  " >
									<label for="Updated At" class=" control-label col-md-4 text-left"> Updated At </label>
									<div class="col-md-8">
									  <textarea name='updated_at' rows='2' id='updated_at' class='form-control '  
				           ><?php echo $row['updated_at'] ;?></textarea> <br />
									  <i> <small></small></i>
									 </div> 
								  </div> </fieldset>
			</div>
			
			
		
			<div style="clear:both"></div>	
				
 		<div class="toolbar-line text-center">		
			<input type="submit" name="apply" class="btn btn-info btn-sm" value="<?php echo $this->lang->line('core.btn_apply'); ?>" />
			<input type="submit" name="submit" class="btn btn-primary btn-sm" value="<?php echo $this->lang->line('core.sb_submit'); ?>" />
			<a href="<?php echo site_url('available');?>" class="btn btn-sm btn-warning"><?php echo $this->lang->line('core.sb_cancel'); ?> </a>
 		</div>
			  		
		</form>

	</div>
	</div>
</div>		
</div>	
</div>
			 
<script type="text/javascript">
$(document).ready(function() { 
 	 
});
</script>		 