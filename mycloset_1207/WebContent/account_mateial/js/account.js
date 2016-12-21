$(document).ready(function() {
	Materialize.updateTextFields();
});

$('.modal').modal({
	dismissible : true,
	opacity : .5,
	in_duration : 300,
	out_duration : 300,
	starting_top : '4%',
	ending_top : '10%',
});

function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			$('#uploadImg').attr('src', e.target.result);
		}
		reader.readAsDataURL(input.files[0]);
	}
};