<div class="page-content row">
	<!-- Page header -->
	<div class="page-header">
		<div class="page-title">
			<h3> <?php echo $pageTitle ?> <small><?php echo $pageNote ?></small></h3>
		</div>
		<ul class="breadcrumb">
			<li><a href="<?php echo site_url('dashboard') ?>">Dashboard</a></li>
			<li><a href="<?php echo site_url('available') ?>"><?php echo $pageTitle ?></a></li>
			<li class="active"> Detail </li>
		</ul>
	</div>  
	
 	<div class="page-content-wrapper m-t">   
		<div class="sbox animated fadeInRight">
			<div class="sbox-title"> <h4> <i class="fa fa-table"></i> <?php echo $pageTitle ;?> <small><?php echo $pageNote ;?></small></h4></div>
			<div class="sbox-content"> 		
				<div class="table-responsive">
					<table class="table table-striped table-bordered" >
						<tbody>	
					
					<tr>
						<td width='30%' class='label-view text-right'>Id</td>
						<td><?php echo $row['id'] ;?> </td>
						
					</tr>
				
					<tr>
						<td width='30%' class='label-view text-right'>Sc Student Id</td>
						<td><?php echo $row['sc_Student_id'] ;?> </td>
						
					</tr>
				
					<tr>
						<td width='30%' class='label-view text-right'>CourseId</td>
						<td><?php echo $row['courseId'] ;?> </td>
						
					</tr>
				
					<tr>
						<td width='30%' class='label-view text-right'>Finalscore</td>
						<td><?php echo $row['finalscore'] ;?> </td>
						
					</tr>
				
					<tr>
						<td width='30%' class='label-view text-right'>Comment</td>
						<td><?php echo $row['comment'] ;?> </td>
						
					</tr>
				
					<tr>
						<td width='30%' class='label-view text-right'>EnrolmentStatus</td>
						<td><?php echo $row['enrolmentStatus'] ;?> </td>
						
					</tr>
				
					<tr>
						<td width='30%' class='label-view text-right'>Valid</td>
						<td><?php echo $row['valid'] ;?> </td>
						
					</tr>
				
					<tr>
						<td width='30%' class='label-view text-right'>Created At</td>
						<td><?php echo $row['created_at'] ;?> </td>
						
					</tr>
				
					<tr>
						<td width='30%' class='label-view text-right'>Updated At</td>
						<td><?php echo $row['updated_at'] ;?> </td>
						
					</tr>
				
						</tbody>	
					</table>    
				</div>
			</div>
		</div>		
	

	</div>
</div>
	  