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

record.onclick = e => {
    record.disabled = true;
    record.style.backgroundColor = "blue";
    stopRecord.disabled = false;
    audioChunks = [];
    rec.start();
}
stopRecord.onclick = e => {
    record.disabled = false;
    stopRecord.disabled = true;
    rec.stop();
}