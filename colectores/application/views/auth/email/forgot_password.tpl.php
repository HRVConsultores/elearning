<html>
<body>
	<h1>Resetear su password para <?php echo $identity;?></h1>
	<p>Porfavor haga click en <?php echo anchor('auth/reset_password/'. $forgotten_password_code, 'Resetear su password');?>.</p>
</body>
</html>