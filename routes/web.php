<?php

Route::get('/', 'HomeController@index')->name('home');

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/chitietkhoahoc/{id}', 'ChiTietKhoaHocController@index')->name('chitietkhoahoc');


Route::post('postLogin', 'Auth\LoginController@postLogin');

Route::post('postLogin', 'Auth\LoginController@postLogin');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('giaodien', function () {
    return view('giaodienmoi');
});

