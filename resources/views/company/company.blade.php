
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->

    <link href="{{ asset('bst/css/bootstrap.min.css') }}" rel="stylesheet">
     <link href="{{ asset('jsui/jquery-ui.min.css') }}" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <style type="text/css">
    .jumbotron {
      padding: 4rem 2rem;
      margin-bottom: 2rem;
      background-color: var(--bs-light);
      border-radius: .3rem;  
    }
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300&display=swap" rel="stylesheet">
<style type="text/css">

</style>
    <title>RIAFY</title>
  </head>
  <body>
<div class="container">
	<div class="row">
		<div class="col-md-3">
			<h3>Stocks</h3>
		</div>
	</div>
</div>
<div class="container">
	<div class="row">
		<!--Junbroton-->
		<div class="jumbotron">

  <h5 class="lead text-center">The easiest way to buy and sell stocks.</h5>

  <p class="text-center">Stock analysis and screening tools for investors in India.</p>
  <div class="row height d-flex justify-content-center align-items-center">
        <div class="col-md-6">
            <div class="search"> <i class="fa fa-search"></i>
              <input type="text" class="form-control" id="txtSearch">
          <!--<select class="SourcesSelect search form-control " id="search" name="company">
  				<option value="">Search a company</option>
			</select>-->
 </div>
        </div>
    </div>
</div>
		<!--Jumbroton-->

	</div>

</div>
<div class="container">
  <div class="row">
    <div class="col-md-2">
    </div>
    <div class="col-md-8 card c1">
      <h1 id="cname"></h1>
      <div class="row">
         <div class="col-md-4">
       <div class="alert alert-primary" role="alert" id="market_cap">
      Market Cap 
      <span id="mc" class="badge" style="color:blue;"></span>
       </div>
    </div>
 <div class="col-md-4">
       <div class="alert alert-primary" role="alert" id="divident_yield">
      Divident Yield 
      <span id="dy" class="badge" style="color:blue;"></span>
       </div>
    </div>
 <div class="col-md-4">
    <div class="alert alert-primary" role="alert" id="debt_equality">
      Debt Equality 
      <span id="de" class="badge" style="color:blue;"></span>
    </div>
  </div>
    <div class="col-md-4">
      <div class="alert alert-primary" role="alert" id="current_price">
      Current Price
      <span id="cp" class="badge" style="color:blue;"></span>
      </div>
    </div>
    <div class="col-md-4">
      <div class="alert alert-primary" role="alert" id="roce">
      Roce
      <span id="rc" class="badge" style="color:blue;"></span> 
      </div>
    </div>
    <div class="col-md-4">
      <div class="alert alert-primary" role="alert" id="eps">
      Eps
      <span id="epss" class="badge" style="color:blue;"></span>
      </div>
    </div>
    <div class="col-md-4">
      <div class="alert alert-primary" role="alert" id="stock_pe">
      Stoke P/E 
      <span id="spe" class="badge" style="color:blue;"></span>
      </div>
    </div>
    <div class="col-md-4">
      <div class="alert alert-primary" role="alert" id="roe">
      Roe
      <span id="ro" class="badge" style="color:blue;"></span> 
      </div>
    </div>
    <div class="col-md-4">
      <div class="alert alert-primary" role="alert" id="reserves">
      Reserves
      <span id="rsv" class="badge" style="color:blue;"></span> 
      </div>
    </div>
    <div class="col-md-4">
      <div class="alert alert-primary" role="alert" id="debt">
      Debt
      <span id="dbt" class="badge" style="color:blue;"></span>
      </div>
    </div>

    </div>
  </div>
  </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

   <script src="{{ asset('jsui/jquery-ui.min.js') }}" type="text/javascript">
   </script>

	<script type="text/javascript">
		$(document).ready(function() {
      var globalData=new Array();
      $('.c1').hide();
    //$('.search').select2({ tags: true});
    function getCompanies()
    {
      var availableTags =new Array();
      //create the ajax script here
      $.ajax({

          method:'GET',
          contentType: 'application/json',
          dataType: 'json',
          url:"http://localhost:5000/api/auth/get-companies?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6NTAwMFwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYyNjUyOTEwMCwiZXhwIjoxNjI2NTMyNzAwLCJuYmYiOjE2MjY1MjkxMDAsImp0aSI6Im0wSUJhZTJnYmJ5Tm5pQ3IiLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.A_qlkrSlVU2FmB9x-r3nv997SyBg7VH5a__EJMi8iyk",
          success:function(response)
          {
              
              //pasted
              $('#search').children().remove();
                    $('#search').append('<option value="">Search a company</option>');
                    $.each(response,function(i) {
                          
                          availableTags[i]=response[i].name;  
                          globalData[response[i].slno]=response[i].name;
                    });

                     /*$("#search").select2({
                                placeholder: "Search a company",
                                allowClear: true
                            });*/
              //pasted
          }


       });
      $( "#txtSearch" ).autocomplete({
      source: availableTags
    });
    }
    getCompanies();
    function getSingleCompany(company)
    {
      var slno=globalData.indexOf(company);
      //create the ajax script here
      $.ajax({

          method:'GET',
          contentType: 'application/json',
          dataType: 'json',
          url:"http://localhost:5000/api/auth/get-company/"+slno+"?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6NTAwMFwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYyNjUyOTEwMCwiZXhwIjoxNjI2NTMyNzAwLCJuYmYiOjE2MjY1MjkxMDAsImp0aSI6Im0wSUJhZTJnYmJ5Tm5pQ3IiLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.A_qlkrSlVU2FmB9x-r3nv997SyBg7VH5a__EJMi8iyk",
          success:function(response)
          {
            $('.c1').show();
            $.each(response,function(i) {
              $('#cname').text(response[i].name);
              $('#mc').text(response[i].market_cap);
              $('#dy').text(response[i].divident_yield);
              $('#de').text(response[i].debt_to_equity);
              $('#cp').text(response[i].current_market_price);
              $('#rc').text(response[i].roce);
              $('#epss').text(response[i].eps);
              $('#spe').text(response[i].stock_pe);
              $('#ro').text(response[i].roe_previous_annum);
              $('#rsv').text(response[i].reserves);
              $('#dbt').text(response[i].debt);
            });
          }
        });    }
      $( "#txtSearch" ).autocomplete({
        change: function( event, ui ) {

          getSingleCompany(this.value);
        }
      });
  });
	</script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>