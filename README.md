# Simple WebAudioRecorder.js in R/Shiny

The software provided on this site shows how to integrate the Simple WebAudioRecorder.js in R/Shiny.

The original version is found at [https://github.com/higuma/web-audio-recorder-js](https://github.com/higuma/web-audio-recorder-js) and explained in a blog post at [https://addpipe.com/blog/using-webaudiorecorder-js-to-record-audio-on-your-website/](https://addpipe.com/blog/using-webaudiorecorder-js-to-record-audio-on-your-website/). A demo can be found at [https://addpipe.com/simple-web-audio-recorder-demo/](https://addpipe.com/simple-web-audio-recorder-demo/), the source code of the demo is found at [https://github.com/addpipe/simple-web-audio-recorder-demo](https://github.com/addpipe/simple-web-audio-recorder-demo).

The source code of the demo version is the basis for the R/Shiny version provided on this site. It uses only the wav format, and the recording is directly saved to the server in the folder where the source code of the app resides.

For saving the recording to the server I used the code provided at [https://gist.github.com/primaryobjects/d6cdf5d31242a629b0e4cda1bfc4bff9](https://gist.github.com/primaryobjects/d6cdf5d31242a629b0e4cda1bfc4bff9).

The JavaScript code is integrated by using Dean Attali's shinyjs package, see [https://deanattali.com/shinyjs/extend](https://deanattali.com/shinyjs/extend).