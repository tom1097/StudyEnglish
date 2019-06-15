<?php

namespace App\Http\Controllers;

use App\Courses;
use App\Videos;
use DB;
class VideoController extends Controller
{
    public function view($id=1)
    {
        $video = Videos::where('id',$id)->first();
        $relate_videos = DB::table('videos')->where('videos.id','<>',$id)->inRandomOrder()->limit(5)->get();
        $new_words = DB::table('new_word')->inRandomOrder()->limit(10)->get();
        return view('giaodienmoi',compact('video','relate_videos','new_words'));
    }

    
    
}
