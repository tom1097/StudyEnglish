<?php

namespace App\Http\Controllers;

use App\Courses;
use App\Videos;
use DB;
class VideoController extends Controller
{
    public function view($id)
    {
        $video = Videos::where('id',$id)->first();
        $relate_videos = DB::table('videos')->where('videos.id','<>',$id)->inRandomOrder()->limit(5)->get();
        return view('giaodienmoi',compact('video','relate_videos'));
    }

    
    
}
