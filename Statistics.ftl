<html>

	<head>
		<!-- Web page title -->
    	<title>Top Trumps</title>
    	
    	<!-- Import JQuery, as it provides functions you will probably find useful (see https://jquery.com/) -->
    	<script src="https://code.jquery.com/jquery-2.1.1.js"></script>
    	<script src="https://code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
    	<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.1/themes/flick/jquery-ui.css">

		<!-- Optional Styling of the Website, for the demo I used Bootstrap (see https://getbootstrap.com/docs/4.0/getting-started/introduction/) -->
		<link rel="stylesheet" href="http://dcs.gla.ac.uk/~richardm/TREC_IS/bootstrap.min.css">
    	<script src="http://dcs.gla.ac.uk/~richardm/vex.combined.min.js"></script>
    	<script>vex.defaultOptions.className = 'vex-theme-os';</script>
    	<link rel="stylesheet" href="http://dcs.gla.ac.uk/~richardm/assets/stylesheets/vex.css"/>
    	<link rel="stylesheet" href="http://dcs.gla.ac.uk/~richardm/assets/stylesheets/vex-theme-os.css"/>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

	</head>

    <body onload="initalize()"> <!-- Call the initalize method when the page loads -->
    	
    	<div class="container">

			<!-- Add your HTML Here -->
		
		</div>
		
		<script type="text/javascript">
		
			// Method that is called on page load
			function initalize() {
			
				// --------------------------------------------------------------------------
				// You can call other methods you want to run when the page first loads here
				// --------------------------------------------------------------------------
				
				// For example, lets call our sample methods
				
				
				GetNumberOfGames();
				GetHumanWins();
				GetAIWins();
				GetAverageNumberOfDraws();
				GetLongestGame();
				
				
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
		
			// This calls the helloJSONList REST method from TopTrumpsRESTAPI
			function GetNumberOfGames() {
			
				// First create a CORS request, this is the message we are going to send (a get request in this case)
				var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/GetNumberOfGames"); // Request type and URL
				
				// Message is not sent yet, but we can check that the browser supports CORS
				if (!xhr) {
  					alert("CORS not supported");
				}

				// CORS requests are Asynchronous, i.e. we do not wait for a response, instead we define an action
				// to do when the response arrives 
				xhr.onload = function(e) {
 					var responseText = xhr.response; // the text of the response
 					document.getElementById("NumberOfGames").innerHTML=responseText;
					
				};
				
				// We have done everything we need to prepare the CORS request, so send it
				xhr.send();		
			}
			
			//This calls the Human Wins
			
			function GetHumanWins() {
			
				// First create a CORS request, this is the message we are going to send (a get request in this case)
				var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/GetHumanWins"); // Request type and URL
				
				// Message is not sent yet, but we can check that the browser supports CORS
				if (!xhr) {
  					alert("CORS not supported");
				}

				// CORS requests are Asynchronous, i.e. we do not wait for a response, instead we define an action
				// to do when the response arrives 
				xhr.onload = function(e) {
 					var responseText = xhr.response; // the text of the response
 					document.getElementById("HumanWins").innerHTML=responseText;
					
				};
				
				// We have done everything we need to prepare the CORS request, so send it
				xhr.send();		
			}
			
			//This calls the AI wins
			
			function GetAIWins() {
			
				// First create a CORS request, this is the message we are going to send (a get request in this case)
				var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/GetAIWins"); // Request type and URL
				
				// Message is not sent yet, but we can check that the browser supports CORS
				if (!xhr) {
  					alert("CORS not supported");
				}

				// CORS requests are Asynchronous, i.e. we do not wait for a response, instead we define an action
				// to do when the response arrives 
				xhr.onload = function(e) {
 					var responseText = xhr.response; // the text of the response
 					document.getElementById("AIWins").innerHTML=responseText;
				
				};
				
				// We have done everything we need to prepare the CORS request, so send it
				xhr.send();		
			}
			
			//This calls the Average Number Of Draws
			
			
			function GetAverageNumberOfDraws() {
			
				// First create a CORS request, this is the message we are going to send (a get request in this case)
				var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/GetAverageNumberOfDraws"); // Request type and URL
				
				// Message is not sent yet, but we can check that the browser supports CORS
				if (!xhr) {
  					alert("CORS not supported");
				}

				// CORS requests are Asynchronous, i.e. we do not wait for a response, instead we define an action
				// to do when the response arrives 
				xhr.onload = function(e) {
 					var responseText = xhr.response; // the text of the response
 					document.getElementById("AverageNumberOfDraws").innerHTML=responseText;
					
				};
				
				// We have done everything we need to prepare the CORS request, so send it
				xhr.send();		
			}
			
			//This calls the longest game
			
			
			function GetLongestGame() {
			
				// First create a CORS request, this is the message we are going to send (a get request in this case)
				var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/GetLongestGame"); // Request type and URL
				
				// Message is not sent yet, but we can check that the browser supports CORS
				if (!xhr) {
  					alert("CORS not supported");
				}

				// CORS requests are Asynchronous, i.e. we do not wait for a response, instead we define an action
				// to do when the response arrives 
				xhr.onload = function(e) {
 					var responseText = xhr.response; // the text of the response
 					document.getElementById("LongestGame").innerHTML=responseText;
					
				};
				
				// We have done everything we need to prepare the CORS request, so send it
				xhr.send();		
			}
			
			

		</script>
		<style>


.Results {
  position: fixed;
  left: 50;
  top: 70;
  width: 50%;
  background-color: Grey;
  color: white;
  text-align: left;
}

.Dashes {
  position: fixed;
  left: 50;
  top: 90;
  width: 50%;
  background-color: Grey;
  color: white;
  text-align: left;
}

.NumberOfGames {
  position: fixed;
  left: 50;
  top: 110;
  width: 50%;
  background-color: Grey;
  color: white;
  text-align: left;
}
.HumanWins {
  position: fixed;
  left: 50;
  top: 130;
  width: 50%;
  background-color: Grey;
  color: white;
  text-align: left;
}

.AIWins {
  position: fixed;
  left: 50;
  top: 150;
  width: 50%;
  background-color: Grey;
  color: white;
  text-align: left;
}

.AverageNumberOfDraws {
  position: fixed;
  left: 50;
  top: 170;
  width: 50%;
  background-color: Grey;
  color: white;
  text-align: left;
}

.LongestGame {
  position: fixed;
  left: 50;
  top: 190;
  width: 50%;
  background-color: Grey;
  color: white;
  text-align: left;
}

</style>

<div class="Results">
	DatabaseResults <span id="Results"></span>
</div>
		</body>
</html>

</style>

<div class="Dashes">
	----------------------------<span id="Dashes"></span>
</div>
		</body>
</html>

</style>

<div class="NumberOfGames">
	 <span id="NumberOfGames"></span>
</div>
		</body>
</html>

</style>

<div class="HumanWins">
	 <span id="HumanWins"></span>
</div>
		</body>
</html>

</style>

<div class="AIWins">
	<span id="AIWins"></span>
</div>
		</body>
</html>

</style>

<div class="AverageNumberOfDraws">
	<span id="AverageNumberOfDraws"></span>
</div>
		</body>
</html>

</style>

<div class="LongestGame">
	<span id="LongestGame"></span>
</div>
		</body>
</html>
