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
        <source src="movie.mp4" type="video/mp4">
        <source src="movie.ogg" type="video/ogg">
        Your browser does not support the video tag.
      </video>
    </div>
    <div class="row">
      <div class="col-lg-9 col-md-9" id="noidungvideo">
        <label>Nội dung câu trong video</label>
      </div>
      <div class="col-lg-3 col-md-3">
        <button class="btn blue">Ghi âm</button>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12 col-md-12" id="noidungvideo">
        <div>
          <label>Từ vựng của câu</label>
        </div>
        <div>
          <label>Ngữ pháp dùng trong đoạn văn</label>
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
              <li class="sidebar-wrapper-li"><a href="#">Bài 1</a></li>
              <li class="sidebar-wrapper-li"><a href="#">Bài 2</a></li>
              <li class="sidebar-wrapper-li"><a href="#">Bài 3</a></li>
              <li class="sidebar-wrapper-li"><a href="#">Bài 4</a></li>
              <li class="sidebar-wrapper-li"><a href="#">Bài 5</a></li>
              <li class="sidebar-wrapper-li"><a href="#">Bài 6</a></li>
              <li class="sidebar-wrapper-li"><a href="#">Bài 7</a></li>
              <li class="sidebar-wrapper-li"><a href="#">Bài 8</a></li>
          </ul>
        </ul>
    </div>
    </div>
</div>
@endsection
