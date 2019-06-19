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
    <link rel="stylesheet" href="assets/css/stylish-portfolio.css">
    <link rel="stylesheet" href="assets/css/tritv_css.css">
    <title>Study English</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg fixed-top navbar-light" style="background-color: #5f98d0;">
        <a class="navbar-brand" href="#" style=" color: white;">Study English</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" style=" color: white;" href="#">Home <span class="sr-only">(current)</span></a>
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
                <button type="button" id="record" class="btn btn-primary"><i class="fa fa-microphone" aria-hidden="true"></i> Record</button>
                <button type="button" id="stopRecord" class="btn btn-danger"><i class="fa fa-stop" aria-hidden="true"></i> Stop</button>
                <audio id=recordedAudio style="padding-top:10px"></audio>
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
                        <p>Please send us your feed back ideas! <br/>admin@studyenglish.com </p>       
                        
                        {{--  For modal writing  --}}

                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                        Start Writing now
                        </button>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">{!! $video->writing !!}</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form>
                <div class="form-group">
                  <label for="message-text" class="col-form-label">Your answer:</label>
                  <textarea rows="6" class="form-control" id="message-text"></textarea>
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Send message</button>
            </div>
          </div>
        </div>
      </div>

                        {{--  End modal Writing  --}}
                    </div>
                </div>

                {{--  #New words  --}}
                <div class="content-title">
                    <h3 class="mt-2"> New Words</h3>
                    <div>
                        @foreach($new_words as $child)
                        <p><b>{{$child->word}}</b> ({{$child->type}}) : {{$child->meaning}}</p>
                        @endforeach
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
                        <a href="{{ route('viewvideo',['id'=> $child->id]) }}"><img src="{{$child->img}}" width="100%" height="100%" alt="{{$child->title}}"></a>
                    </div>
                    <div class="col-lg-8">
                        <a href="{{ route('viewvideo',['id'=> $child->id]) }}" style="font-size: 16px;">{{$child->title}}</a>
                    </div>
                    <hr class="hr-tritv">
                </div>
                @endforeach
            </div>
        </div>
    </div>

    <footer class="footer text-center">
        <div class="container">
            <ul class="list-inline mb-5">
                <li class="list-inline-item">
                    <a class="social-link rounded-circle text-white mr-3" href="#">
                        <i class="fa fa-facebook" aria-hidden="true"></i>
                    </a>
                </li>
                <li class="list-inline-item">
                    <a class="social-link rounded-circle text-white mr-3" href="#">
                        <i class="fa fa-twitter" aria-hidden="true"></i>
                    </a>
                </li>
                <li class="list-inline-item">
                    <a class="social-link rounded-circle text-white" href="#">
                        <i class="fa fa-github" aria-hidden="true"></i>
                    </a>
                </li>
            </ul>
            <p class="text-muted small mb-0">Copyright &copy; Your Website 2019</p>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script>

        navigator.mediaDevices.getUserMedia({ audio: true })
            .then(stream => { handlerFunction(stream) })
        function handlerFunction(stream) {
            rec = new MediaRecorder(stream);
            rec.ondataavailable = e => {
                audioChunks.push(e.data);
                if (rec.state == "inactive") {
                    let blob = new Blob(audioChunks, { type: 'audio/mpeg-3' });
                    recordedAudio.src = URL.createObjectURL(blob);
                    recordedAudio.controls = true;
                    recordedAudio.autoplay = false;
                    sendData(blob);
                }
            }
        }
        function sendData(data) { }
        $('#stopRecord').hide();
        $('#recordedAudio').hide();
        record.onclick = e => {
            record.disabled = true;
            $('#stopRecord').show();
            $('#recordedAudio').hide();
            record.style.backgroundColor = "blue";
            stopRecord.disabled = false;
            audioChunks = [];
            rec.start();
        }
        stopRecord.onclick = e => {
            record.disabled = false;
            $('#stopRecord').hide();
            $('#recordedAudio').show();
            stopRecord.disabled = true;
            rec.stop();
        }
    </script>
</body>
</html>