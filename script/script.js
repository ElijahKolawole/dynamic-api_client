function getQuote(){
	// location.replace("http://localhost:9999/dynamic-api_client/quote");
	printInput();
	 //getFormValues():
	}

	function getFormValues(){
		let form = document.forms[0];
		alert(form.name);
	}
	function toggleImage(id){
		var imghol = document.getElementById(id);
		imghol.src = image;
	}
	function printInput() {
		var state = document.getElementById("form").elements[0].value;
		document.getElementById("state").innerHTML = x;
	}

	function updateState(state){
		document.getElementById('state').value = state;
	}


	function displayFormContents(someForm) {
		var out = '';
		for (var i=0, el; el = someForm.elements[i]; i++) {
			if (el.name) {
				out += el.name + ' = ' + el.value + '\n';
			}
		}
		alert(out);
		printFormContents(someForm);
	}

	function printFormContents(someForm) {
		var out = '';
		for (var i=0, el; el = someForm.elements[i]; i++) {
			if (el.name) {
        	//el.name.style.fontweight ='900'; 
        	out += el.name.toUpperCase() + ' = ' + el.value + '\n';
        }
    }
    document.getElementById('output').innerHTML = out;
    alert(QuoteJourney.getCurrUrl());
    callservlet();
}

function retainValue() {
	var stateValue = localStorage.getItem("stateValue");
	if(stateValue != null) {
		$("select[name=state]").val(stateValue);
	}

	$("select[name=state]").on("change", function() {
		localStorage.setItem("stateValue", $(this).val());
	});
}

function toggle_visibility(id) {
	var e = document.getElementById(id);
	if(e.style.display == 'block')
		e.style.display = 'none';
	else
		e.style.display = 'block';
}
function callservlet() {
  //do your processing.
  document.getElementsByName('getdata')[0].submit();
}
function setURL(url){
	var baseURL = "http://localhost:9999/dynamic-api_client";
    document.getElementById('quote_main').src = baseURL+url;
}
goBack(currURL, newURL){

}
goForward(currURL, newURL){

}