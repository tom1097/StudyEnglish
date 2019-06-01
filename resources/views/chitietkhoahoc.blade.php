@extends('layouts.master')

@section('content')
<div class="row">
  <div class="col-lg-9 col-md-9">
    <nav>
      <div class="container-fluid">
        <div class="navbar-header" >
            <a href="{{  url()->previous() }}"><i class="fa fa-chevron-left"> Trở về</i></a>
        </div>
        <div class="collapse navbar-collapse navbar-right">
            <button class="btn btn-danger btn-md">Báo lỗi</button>
        </div>
      </div>
    </nav>
    <div style="margin-top: 30px;">
        <iframe style="width:100%; height: 500px" src="{{$video->source}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <div class="row">
      @if($video->description != null)  
      <div class="col-lg-12 col-md-12" id="noidungvideo">
        <label>Video subtitle:</label> <br>
        <label>{!! $video->description !!}</label>
      </div>
      @endif
    </div>
    <div class="row">
      <div class="col-lg-9 col-md-9">
          <h3>Record your sound</h3>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-9 col-md-9">
          <p>
            <button id="record" class="btn btn-primary btn-md">Record</button>
            <button id="stopRecord"  class="btn btn-danger btn-md" disabled>Stop</button>
          </p>
          <p>
            <audio id=recordedAudio></audio>
          </p>
      </div>
      <div class="col-lg-3 col-md-3" style="text-align: center;">
          <div >
          <button class="btn btn-info btn-md">ghi âm</button>
        </div>
      </div>
    </div>
    <div class="vocabulary" style="background-color: #efcfab82; padding: 7px; border-radius: 10px;border: 3px ridge #a9a198f5">
      <div class="row">
      <div class="col-lg-9 col-md-9" id="noidungvideo">
        <div>
          
            need some idea</br>
            1: which vacobulary?</br>
            2: how to auto transform</br>
            1: which vacobulary?</br>
            2: how to auto transform</br>
            1: which vacobulary?</br>
            2: how to auto transform</br>
          
          <label>Some vocabularies:</label><br>
          <h4>Vocabulary exist here!</h4>
        </div>
      </div>
      <div class="col-lg-3 col-md-3" id="noidungvideo">
        <div>
        </div>
      </div>
    </div>
     <div class="row">
      <div class="col-lg-12 col-md-12" id="noidungvideo">
        <div>
          {{--  /*
            need some idea
            1: which vacobulary?
            2: how to auto transform
          */  --}}
          <label>Some vocabularies:</label><br>
          <h4>Vocabulary exist here!</h4>
        </div>
      </div>
     </div>
     <div class="row">
      <div class="col-lg-12 col-md-12" id="noidungvideo">
        <div>
          {{--  /*
            need some idea
            1: which vacobulary?
            2: how to auto transform
          */  --}}
          <label>Some vocabularies:</label><br>
          <h4>Vocabulary exist here!</h4>
        </div>
      </div>
     </div>
    
    <div class="row">
      <div class="col-lg-9 col-md-9" id="noidungvideo">
        <label class="switch">
          <input type="checkbox" checked>
          <span class="slider round"></span>
          {{--  /*
            forward next video
          */  --}}
        </label><label>Tự động chạy</label>
      </div>
      <div class="col-lg-3 col-md-3" style="font-size: 30px">
        {{--  /*
            forward next video
          */  --}}
        <a href="">Bài tiếp theo <i class="fa fa-angle-double-right"></i></a>
      </div>
    </div>
    </div>
  </div>
   
  <div class="col-lg-3 col-md-3">
    <nav>
      <div class="container-fluid">
        <div class="navbar-header" style="float:left;">
          {{--  /*
            - file pdf save on DB
            - permission for user to download file
          */  --}}
            <a><p><b style="font-size: 20px;">Giáo trình</b></p></a>
        </div>
        <div class="collapse navbar-collapse" style="float:right;">
          {{--  /*  
            use FB comment
          */  --}}
            <a><p><b style="font-size: 20px;">Thảo luận</b></p></a>
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





@endsection
