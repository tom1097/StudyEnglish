<?php

namespace App\Http\Controllers;

class ChiTietKhoaHocController extends Controller
{
    public function index(){
        
        return view('chitietkhoahoc');
    	//return redirect()->intended('/home');
    }

    
    
}
