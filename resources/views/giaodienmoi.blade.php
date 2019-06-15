<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <base rel="stylesheet" href="{{asset('')}}">
    <link rel="stylesheet" href="assets/css/tritv_reset.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="assets/css/tritv_css.css">
    <title>Document</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg fixed-top navbar-light" style="background-color: #5f98d0;">
        <a class="navbar-brand" href="#" style=" color: white;">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" style=" color: white;" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style=" color: white;" href="#">Link</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container mt-5">
        <div class="row">
            <div class="col-lg-12 header-title text-center">
                <h3>Lesson {{$video->id}}: {{$video->title}}</h3>
            </div>
            <hr/>
        </div>
        <div class="row mt-1">
            <div class="col-lg-12">
                <div class="video">
                        <iframe src="{{$video->source_video}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" scrolling="no" width="100%" height="100%" allowfullscreen></iframe>
                </div>
            </div>

            {{--  **************   Record button handle here ************** --}}
            <div class="col-lg-12 mt-2">
                <button type="button" class="btn btn-primary"><i class="fa fa-microphone" aria-hidden="true"></i> Record</button>
                <button type="button" class="btn btn-danger"><i class="fa fa-stop" aria-hidden="true"></i> Stop</button>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col-lg-8">
                <div class="content-title">
                    <h3 class="mt-2">Summary</h3>
                    <div>
                        <p>
                            {!! $video->summary !!}
                        </p>
                    </div>
                </div>

                <div class="content-title">
                    <h3 class="mt-2">Speaking</h3>
                    <div>
                        <p>{!! $video->speaking !!}</p>
                        <iframe src="{{$video->speaking_video}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" scrolling="no" width="100%" height="420"  allowfullscreen></iframe>                   
                    </div>
                </div>
                {{--  #Pronunciation  --}}
                <div class="content-title">
                    <h3 class="mt-2">Pronunciation</h3>
                    <div>
                        <p>{!! $video->pronunciation !!}</p>
                        <iframe src="{{$video->pronunciation_video}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" scrolling="no" width="100%" height="420"  allowfullscreen></iframe>           
                    </div>
                </div>

                {{--  #Conversation  --}}
                <div class="content-title">
                    <h3 class="mt-2">Conversation</h3>
                    <div>
                        <iframe src="{{$video->conversation_script}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" scrolling="no" width="100%"   allowfullscreen></iframe>   
                        <p>{!! $video->conversation !!}</p>                     
                    </div>
                </div>

                {{--  #Writing  --}}
                <div class="content-title">
                    <h3 class="mt-2">Writing</h3>
                    <div>
                        <p>{!! $video->writing !!}</p>  
                        <p>Please send us your feed back ideas !! </p>                   
                    </div>
                </div>
            </div>


            {{--  Danh sách các video khác trong DB, render random them  --}}
            <div class="col-lg-4">
                <div class="related-title">
                    <h3>Related Videos</h3>
                    <hr>
                </div>
                @foreach($relate_videos as $child)
                <div class="row">
                    <div class="col-lg-4">
                        <a href=""><img src="https://via.placeholder.com/150" width="100%" height="100%" alt=""></a>
                    </div>
                    <div class="col-lg-8">
                        <a href="" style="font-size: 16px;">Let's Learn English Lesson 38 Speaking Practice</a>
                    </div>
                    <hr class="hr-tritv">
                </div>

                
                <div class="row">
                    <div class="col-lg-4">
                        <a href=""><img src="https://via.placeholder.com/150" width="100%" height="100%" alt=""></a>
                    </div>
                    <div class="col-lg-8">
                        <a href="" style="font-size: 16px;">Let's Learn English Lesson 38 Speaking Practice</a>
                    </div>
                    <hr class="hr-tritv">
                </div>

                <div class="row">
                    <div class="col-lg-4">
                        <a href=""><img src="https://via.placeholder.com/150" width="100%" height="100%" alt=""></a>
                    </div>
                    <div class="col-lg-8">
                        <a href="" style="font-size: 16px;">Let's Learn English Lesson 38 Speaking Practice</a>
                    </div>
                    <hr class="hr-tritv">
                </div>

                <div class="row">
                    <div class="col-lg-4">
                        <a href=""><img src="https://via.placeholder.com/150" width="100%" height="100%" alt=""></a>
                    </div>
                    <div class="col-lg-8">
                        <a href="" style="font-size: 16px;">Let's Learn English Lesson 38 Speaking Practice</a>
                    </div>
                    <hr class="hr-tritv">
                </div>
                @endforeach
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>