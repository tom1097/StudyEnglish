<?php

namespace App\Http\Controllers;

use App\Courses;
use App\Videos;
use DB;
class ChiTietKhoaHocController extends Controller
{
    public function index($id)
    {
        $video = Videos::where('id',$id)->first();
        $other_videos = DB::table("videos")
                ->where("course_id",$id)
                ->select("videos.id as idVideo","videos.name as nameVideo")
                ->get();
        return view('chitietkhoahoc',compact('video','other_videos'));
    }

    
    
}
