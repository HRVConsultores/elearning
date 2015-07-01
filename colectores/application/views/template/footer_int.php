<script>
$(function () {
		$('#popover').popover({ placement:'bottom', html:'true', trigger: 'hover',delay: {show: 100, hide: 300}});
		$('#popover1').popover({ placement:'bottom', html:'true', trigger: 'hover',delay: {show: 100, hide: 300}});
		$('#popover2').popover({ placement:'bottom', html:'true', trigger: 'hover',delay: {show: 100, hide: 300}});
		$('#popover3').popover({ placement:'bottom', html:'true', trigger: 'hover',delay: {show: 100, hide: 300}});
		$('#popover4').popover({ placement:'bottom', html:'true', trigger: 'hover',delay: {show: 100, hide: 300}});
		$('#popover5').popover({ placement:'bottom', html:'true', trigger: 'hover',delay: {show: 100, hide: 300}});
		$('#popover6').popover({ placement:'bottom', html:'true', trigger: 'hover',delay: {show: 100, hide: 300}});
		$('#popover7').popover({ placement:'bottom', html:'true', trigger: 'hover',delay: {show: 100, hide: 300}});
		$('#popover8').popover({ placement:'bottom', html:'true', trigger: 'hover',delay: {show: 100, hide: 300}});
		$('#popover9').popover({ placement:'bottom', html:'true', trigger: 'hover',delay: {show: 100, hide: 300}});
		$('#popover10').popover({ placement:'bottom', html:'true', trigger: 'hover',delay: {show: 100, hide: 300}});
    });
$('[rel=tooltip]').tooltip({ placement: 'top', html: 'true', container: 'body' })
swfobject.registerObject("FlashID");
</script>
<div id="footer">
	<img class="logos_footer"src="<?php echo base_url(IMAGES_C."logos/logos.png") ?>" width="485" height="43" />
	<div id="navegacion">
		<div id="bot_home"><?php echo anchor('home/pag/index', ' ','class="browse home" title="Volver al menú"'); ?></a></div>
		<div id="bot_prev"><a class="prev browse left" title="Anterior" href="#"></a></div>
		<div id="bot_next"><a class="next browse right" title="Siguiente" href="#"></a></div>
	</div>	
</div>