function getQuote(){
	 location.replace("http://localhost:9999/dynamic-api_client/quote");
	 getFormValues():
}

function getFormValues(){
	let form = document.forms[0];
	alert(form.name);
}
function toggleImage(id){
	var imghol = document.getElementById(id);
	imghol.src = image;
}