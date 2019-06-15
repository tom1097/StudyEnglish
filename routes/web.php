<?php

Route::get('/', 'HomeController@index')->name('home');

Route::get('video/{id}', 'VideoController@view')->name('viewvideo');

