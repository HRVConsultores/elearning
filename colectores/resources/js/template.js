function MM_preloadImages() {
  var d=document; if(d.images){if(!d.MM_p) d.MM_p=new Array();
  var i,j=d.MM_p.length,a=MM_preloadImages.arguments;for(i=0;i<a.length;i++)
  if(a[i].indexOf("#")!=0){d.MM_p[j]=new Image;d.MM_p[j++].src=a[i];}}
}
function adjustHeight(){
	h=$('div.container').height();w=$(document).height();d=w-h;
	if(d>0){$('div.container').css('margin-top',Math.round(d*0.5)+'px');}
	else{$('div.container').css('margin-top','0');}
}
function navigationLocation(url, m, a){
	$('.bc strong').html($('h1:first').html());
	$('.browse.home').attr('href',url+'home/pag/0');
	$('a.prev').attr('href',m-1);
	$('a.next').attr('href',url+'home/registro_elemento/'+(m+1));

	if(a==true){$('.prev').addClass('disabled');}
	if(m<0){
		$('.next').addClass('disabled');
		// $('a.prev').attr('href','mod'+m+'_'+zeroFill(-1*i-1,2)+'.html');
		$('a.prev').attr('href',(m+1)*-1);
	}
	if(a==false){$('.prev').addClass('disabled');$('.next').addClass('disabled');}
	$_GET = getQueryParams(document.location.search);
	if($_GET['block']=='1'){
		// $('.footer').append('<a class="back browse" title="Volver a la diapositiva anterior" href="'+$_GET['page']+'.html"></a>');
		$('.footer').append('<a class="back browse" title="Volver a la diapositiva anterior" href="'+$_GET['page']+'.php"></a>');
	}
}

function getQueryParams(qs){
	qs = qs.split("+").join(" ");
	var params = {};
	var tokens,
		re = /[?&]?([^=]+)=([^&]*)/g;
	while (tokens = re.exec(qs)) {
		params[decodeURIComponent(tokens[1])]	= decodeURIComponent(tokens[2]);
	}
	return params;
}

//Para draganddrop
function pE(b,e){z=b.draggable.attr("id").replace("o","");z==e?(b.draggable.hasClass("o"+z)&&b.draggable.stop().switchClass("o"+z,"c"+z,200),b.draggable.hasClass("e"+z)&&b.draggable.stop().switchClass("e"+z,"c"+z,200)):(b.draggable.hasClass("c"+z)&&b.draggable.stop().switchClass("c"+z,"e"+z,200),b.draggable.hasClass("o"+z)&&b.draggable.stop().switchClass("o"+z,"e"+z,200))}function cS(b){c=b-2;if(c>=1&&c<=5)for(i=1;i<6;i++)$("a.st"+i).removeClass("st"+i+"1"),i==c&&(t=setTimeout(function(){$("a.st"+c).addClass("st"+c+"1")},300));return!0}