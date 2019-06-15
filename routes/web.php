<?php
Route::get('/', 'VideoController@view');
Route::get('video/{id}', 'VideoController@view')->name('viewvideo');

