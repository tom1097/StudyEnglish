
$(document).ready(function() {
	//$('.error').hide();
	$('#submitBtn_order').click(function(event) {
		if ($("input[name='radio_shipping']:checked").val()==null) {
			alert('choose shopping method');
			event.preventDefault();
			return;
		}
    if ($("input[name='radio_payments']:checked").val()==null) {
      alert('choose payments');
      event.preventDefault();
      return;
    }
    if ($("select[name=select_province]").val() == "default") {

      alert("choose province");
      event.preventDefault();
      return;
    }
		
	});

});

$( "#choose_province" ).change(function() 
{
	var fee_shipID=$('#choose_province').val();
	$.ajaxSetup({
          headers: {'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')}
      });
       jQuery.ajax({
          url:"getFeeShip",
          method: 'get',
          data: {'fee_shipID':fee_shipID
      		},
          success: function(result){
          	$('#nextDayShip').val(result.fee_ship_nextday);
          	$('#nextDayShipSpan').text(result.fee_ship_nextday);
          	$('#standardShip').val(result.fee_standard);
          	$('#standardShipSpan').text(result.fee_standard);
            $('#fee_shipping').val($("input[name='radio_shipping']:checked").val());
            $('#fee_shipping_lable').text($("input[name='radio_shipping']:checked").val());
          }});
});

$( ".shippingMethod" ).change(function() 
{
    $('#fee_shipping').val($("input[name='radio_shipping']:checked").val());
    $('#fee_shipping_lable').text($("input[name='radio_shipping']:checked").val());
});

function addToCart() {
	var product=new Array();
		product['id']=$('#product_id').val();
		product['classify']= null;
		product['number']=$('#number').val();
		product['price']=$('#price').val();
		product['name']=$('#product_name').val();
	if($('.sc-item').length !=0){
		if($("input[name='classify_id']:checked").val()==null){
			alert("Chọn loại sản phẩm");
		}
		else{
			product['classify']= $("input[name='classify_id']:checked").val();
			console.log(product);

			$.ajaxSetup({
                  headers: {
                      'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                  }
              });
               jQuery.ajax({
                  url:"addToCart",
                  method: 'post',
                  data: {'id':product['id'],
                  		'name': product['name'],
                  		'classify':product['classify'],
                  		'number':product['number'],
                  		'price':product['price']
              		},
                  success: function(result){
                  	$('#cart').text(result);
                  }});
		}
	}
	else{
		$.ajaxSetup({
          headers: {
              'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
          }
      	});
       	jQuery.ajax({
          url:"addToCart",
          method: 'post',
          data: {'id':product['id'],
          		'classify':product['classify'],
          		'number':product['number'],
          		'price':product['price']
      		},
          success: function(result){
          	$('#cart').text(result);
          }});
	}
}
function SearchFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("search_select");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}


