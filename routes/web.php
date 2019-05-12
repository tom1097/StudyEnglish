<?php

Route::get('/', function () {
    return view('welcome');
});


Route::get('/home', 'HomeController@index')->name('home');

Route::post('postLogin', 'Auth\LoginController@postLogin');

Route::post('postLogin', 'Auth\LoginController@postLogin');

Route::get('/chitietkhoahoc/{id}', 'ChiTietKhoaHocController@index')->name('chitietkhoahoc');