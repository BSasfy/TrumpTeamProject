<!DOCTYPE html>
<html>

	<head>
		<!-- Web page title -->
    	<title>Main game</title>
    	<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		
    	
    	<!-- Import JQuery, as it provides functions you will probably find useful (see https://jquery.com/) -->
    	<script src="https://code.jquery.com/jquery-2.1.1.js"></script>
    	<script src="https://code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
    	<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.1/themes/flick/jquery-ui.css">

		<!-- Optional Styling of the Website, for the demo I used Bootstrap (see https://getbootstrap.com/docs/4.0/getting-started/introduction/) -->
	
		
		<link rel="stylesheet" href="http://dcs.gla.ac.uk/~richardm/TREC_IS/bootstrap.min.css"/>
    	<script src="http://dcs.gla.ac.uk/~richardm/vex.combined.min.js"></script>
    	<script>vex.defaultOptions.className = 'vex-theme-os';</script>
    	<link rel="stylesheet" href="http://dcs.gla.ac.uk/~richardm/assets/stylesheets/vex.css"/>
    	<link rel="stylesheet" href="http://dcs.gla.ac.uk/~richardm/assets/stylesheets/vex-theme-os.css"/>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"/>
		
<!-- Style to display img, change url to have another pic -->

<style>
body  {
  background-image: url("https://external-preview.redd.it/6ezWhRdWQ0PMDCb3WcXtkYXuJpa7GQtyiQkBn5c-7xk.png?auto=webp&s=0a74450d5274c9e2e6eba15f935028527a9f660a");
  
  background-position: center;
  background-repeat: no-repeat; 
  background-size: cover;
  background-color: #cccccc;
  max-width: 100%;
  height: 1000px
}
</style>
	
<!-- Config container to be at the center -->

<style>
div.container{
 display: block;
  margin-left: auto;
  margin-right: auto;
  width: 40%;
  padding: 70px 0;
}
</style>
	</head>

<!--navbar -->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Top trumps</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="http://localhost:7777/toptrumps/game/">Play the game</a>
      <a class="nav-item nav-link" href="http://localhost:7777/toptrumps/stats/">Statistics</a>
    </div>
  </div>
</nav>

  
 <body onload="initalize()"> <!-- Call the initalize method when the page loads -->
 
<!-- Container and box  -->

<div class="container">
<div class="jumbotron">
    <h1>Welcome to Top Trumps!</h1> 
    </br>
    <p align = "center">
    <a href="http://localhost:7777/toptrumps/game" class="btn btn-success btn-lg active" role="button" aria-pressed="true">Play!</a>	
	&nbsp;
	<a href="http://localhost:7777/toptrumps/stats" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">View stats</a>
 	</p> 
  </div>
</div> 
		</div>
		
  
 
    
 
					


		
		<script type="text/javascript">
		
			// Method that is called on page load
			function initalize() {
			
			

			
				// --------------------------------------------------------------------------
				// You can call other methods you want to run when the page first loads here
				// --------------------------------------------------------------------------
				
				// For example, lets call our sample methods
				helloJSONList();
				helloWord("Student");
			
				
			}
			
			// -----------------------------------------
			// Add your other Javascript methods Here
			// -----------------------------------------
		
		
			// This is a reusable method for creating a CORS request. Do not edit this.
			
			function createCORSRequest(method, url) {
  				var xhr = new XMLHttpRequest();
  				if ("withCredentials" in xhr) {

    				// Check if the XMLHttpRequest object has a "withCredentials" property.
    				// "withCredentials" only exists on XMLHTTPRequest2 objects.
    				xhr.open(method, url, true);

  				} else if (typeof XDomainRequest != "undefined") {

    				// Otherwise, check if XDomainRequest.
    				// XDomainRequest only exists in IE, and is IE's way of making CORS requests.
    				xhr = new XDomainRequest();
    				xhr.open(method, url);

 				 } else {

    				// Otherwise, CORS is not supported by the browser.
    				xhr = null;

  				 }
  				 return xhr;
			}
		
		</script>
		
		<!-- Here are examples of how to call REST API Methods -->
		<script type="text/javascript">
		
		function playit(){
		var xhr = createCORSRequest('GET',""http://localhost:7777/toptrumps/playit");
		if(!xhr){
		alert("CORS not supported");
		}
		xhr.onload = function(e){
			var responseText=xhr.response;
			alert(responseText);
		};
		xhr.send();
		}		
			// This calls the helloJSONList REST method from TopTrumpsRESTAPI
			function helloWord(word) {
			
				// First create a CORS request, this is the message we are going to send (a get request in this case)
				var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/helloWord?Word="+word); // Request type and URL+parameters
				
				// Message is not sent yet, but we can check that the browser supports CORS
				if (!xhr) {
  					alert("CORS not supported");
				}

				// CORS requests are Asynchronous, i.e. we do not wait for a response, instead we define an action
				// to do when the response arrives 
				xhr.onload = function(e) {
 					var responseText = xhr.response; // the text of the response
					alert(responseText); // lets produce an alert
				};
				
				// We have done everything we need to prepare the CORS request, so send it
				xhr.send();		
			}

		</script>
		
		</body>
		

</html>
