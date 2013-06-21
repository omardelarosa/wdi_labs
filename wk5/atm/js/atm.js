var checking_balance = 1000.00;
var savings_balance = 1000.00;

function deposit_money() {

	var amount_input = $('#checking input[name=amount]').val();
	//figure this out later
	console.log('Money deposited');

}

$(document).ready(function(){

	$('#checking .deposit').click(deposit_money);

	$('#checking .deposit').css({

		'background-color' : 'red',
		'border-color' : 'black'

	});

});