<?php

Route::group([
  
	'namespace' => 'App\Http\Controllers',
    'prefix' => 'auth'


], function ($router) {

    Route::post('login', 'AuthController@login');
    Route::post('logout', 'AuthController@logout');
    Route::post('refresh', 'AuthController@refresh');
    Route::get('get-companies','CompanyController@getCompanies');
    Route::get('get-company/{slno}','CompanyController@getSingleCompany');
    Route::post('me', 'AuthController@me');

});
