<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Background</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Pragma" content="no-cache"/>
<style type="text/css">
.intro {
  position: absolute;
  left: 0;
  top: 50%;
  padding: 0 20px;
  width: 100%;
  text-align: center;
}
#particles {
  width: 100%;
  height: 100%;
  overflow: hidden;
}

body {
  background: #16a085;
  font-family: 'Montserrat', sans-serif;
  color: #fff;
  line-height: 1.3;
  -webkit-font-smoothing: antialiased;
}


</style>
</head>
<body>
<div id="particles">
	<div class="intro">
		<h1>有事请QQ我</h1>
	</div>
</div>
</body>
<script type='text/javascript' src='js/jquery-1.10.2.min.js'></script>
<script type='text/javascript' src='js/jquery.particleground.js'></script>
<script>
$(document).ready(function() {
	  $('#particles').particleground({
	    dotColor: '#5cbdaa',
	    lineColor: '#5cbdaa'
	  });
	  $('.intro').css({
	    'margin-top': -($('.intro').height() / 2)
	  });
	});
</script> 
</html>