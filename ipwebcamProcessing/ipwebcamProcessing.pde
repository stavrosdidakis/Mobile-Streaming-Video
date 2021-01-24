//A tutorial from www.soniconlab.com to extract live mobile video in Processing
//with the use of IPWebcam Android application

//Create a PImage to store the image frames
PImage streamVid;

void setup(){
  //Size according to our settings in IPWebcam Resolution
  size(620, 480);
  //Set a low frame rate to make sure that we read properly the images
  frameRate(30);
  smooth(); 
}

void draw(){
  //Here we load the image constantly in every frame from the IP address
  streamVid = loadImage("http://10.0.1.12:8080/shot.jpg");
  //And finally we project it in our window
  image(streamVid, 0, 0); 
}
