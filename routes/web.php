<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/





Route::group(['middleware' => ['auth']], function () {
   	
	Route::get('/profile', 'ProfileController@profile');
	Route::post('/update_profile', 'ProfileController@update_profile');
	Route::post('/update_password', 'ProfileController@update_password');
	Route::post('/storeComment', 'HomeController@addComment');

	Route::group(['middleware' => ['isAdmin']], function () {
		Route::get('/admin', 'AdminController@admin');
		Route::get('/comment/delete/{id}', 'AdminController@delete_comment');
		Route::get('/comment/show_comment/{id}', 'AdminController@show_comment');
		Route::get('/comment/hide_comment/{id}', 'AdminController@hide_comment');
	});
});






Auth::routes();
Route::get('/', 'HomeController@index');
Route::get('/home', 'HomeController@index')->name('home');
