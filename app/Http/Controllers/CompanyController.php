<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
class CompanyController extends Controller
{
	public function __construct()
	{
		 $this->user = JWTAuth::parseToken()->authenticate();
	}
    public function getCompanies()
    {
    	$companies=DB::table('nse_stocks')
    				->select('slno','name')
    				->get();
    	return response()->json($companies);			
    	//return  $companies;
    }
    public function getSingleCompany($slno)
    {
    	$companies=DB::table('nse_stocks')
    				->select('slno','name','current_market_price','market_cap','stock_pe','divident_yield','roce','roe_previous_annum','debt_to_equity','eps','reserves','debt')
    				->where('nse_stocks.slno','=',$slno)
    				->get();
    	return response()->json($companies);
    }
}
