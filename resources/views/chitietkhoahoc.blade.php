@extends('layouts.master')

@section('content')
<div class="row">
  <div class="col-lg-9 col-md-9">
    <nav>
      <div class="container-fluid">
        <div class="navbar-header" >
            <a href=""><i class="fa fa-chevron-left"> Trở về</i></a>
        </div>
        <div class="collapse navbar-collapse navbar-right">
            <button class="btn red">Báo lỗi</button>
        </div>
      </div>
    </nav>
    <div style="">
      <video id="video" controls>
        <source src="{{$video->source}}" style="width:100%" type="video/mp4">
        <source src="{{$video->source}}" type="video/ogg">
        Your browser does not support the video tag.
      </video>
    </div>
    <div class="row">

        @if($video->description != null)  
      <div class="col-lg-9 col-md-9" id="noidungvideo">
        
        <label>Video subtitle:</label> <br>
        <label>{!! $video->description !!}</label>
      </div>

      @endif

      <div class="col-lg-3 col-md-3">
        <button class="btn blue">Ghi âm</button>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12 col-md-12" id="noidungvideo">
        <div>
          <label>Some vocabularies:</label><br>
          <h4>Vocabulary exist here!</h4>
        </div>
        <div>
          <label>Ngữ pháp dùng trong đoạn văn</label><br>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-9 col-md-9" id="noidungvideo">
        <label class="switch">
          <input type="checkbox" checked>
          <span class="slider round"></span>
        </label><label>Tự động chạy</label>
      </div>
      <div class="col-lg-3 col-md-3" style="font-size: 30px">
        <a href="">Bài tiếp theo <i class="fa fa-angle-double-right"></i></a>
      </div>
    </div>
  </div>
   
  <div class="col-lg-3 col-md-3">
    <nav>
      <div class="container-fluid">
        <div class="navbar-header" >
            <a><p>Giáo trình</p></a>
        </div>
        <div class="collapse navbar-collapse">
            <a><p>Thảo luận</p></a>
        </div>
      </div>
    </nav>
    <div class="sidebar-wrapper">
        <ul style="font-size: 18px; margin:20px">
          <ul><h5><u><b>Danh sách bài học</b></u></h5>
            @foreach($other_videos as $child)
              <li class="sidebar-wrapper-li"><a href="chitietkhoahoc/{{$child->idVideo}}">{{$child->nameVideo}}</a></li>
            @endforeach
          </ul>
        </ul>
    </div>
    </div>
</div>

<?php
foreach(array('video', 'audio') as $type) {
  if (isset($_FILES["${type}-blob"])) {
  
      echo 'uploads/';
      
      $fileName = $_POST["${type}-filename"];
      $uploadDirectory = 'uploads/'.$fileName;
      
      if (!move_uploaded_file($_FILES["${type}-blob"]["tmp_name"], $uploadDirectory)) {
          echo(" problem moving uploaded file");
      }
  
      echo($fileName);
  }
}

?>
@endsection
