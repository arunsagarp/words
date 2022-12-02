PImage img;
//char arr[] = new char[]{};
String arr = "You are Smart & Beautiful";
int counter = 0;
//int img_width =0, img_height=0;
int videoFramesCaptured = 0;
final int SECONDS_TO_CAPTURE = 30;
final int VIDEO_FRAME_RATE = 60;
boolean recordVideo = false;
void setup(){
    size(1200, 1200);
  img = loadImage("teju2.jpeg");
   loadPixels();
   background(0);
}
void draw(){
  for(int img_height=0;img_height<img.height;img_height++){
    
    for(int img_width=0;img_width<img.width;img_width++){
      
      

   int w = width/img.width;
   int h = height/img.height;
   
   int loc = img_width + img_height*img.width;
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  int avg = (int)(r+ g+ b)/3;
  noStroke();
  fill(avg);
  textSize(w);
  text(arr.charAt(counter),img_width*w + w *0.5,img_height*h + h *0.5);
  counter = (counter+1)%arr.length();
 if (recordVideo){
      saveFrame("output/export-####.png");
 }
     }
  }

    noLoop();
  }
  
  //for (int y = 0; y <img.height; y++) {
  //  for (int x = 0; x < img.width; x++) {
  //    int loc = x + y*img.width;
  //    float r = red(img.pixels[loc]);
  //    float g = green(img.pixels[loc]);
  //    float b = blue(img.pixels[loc]);
  //    int avg = (int)(r+ g+ b)/3;
  //    noStroke();
  //    fill(avg);
  //    textSize(w);
  //    text(arr.charAt(counter),x*w + w *0.5,y*h + h *0.5);
  //    counter = (counter+1)%arr.length();
      
  //  }
  //}
  //noLoop();


  
void mouseReleased() {
  saveFrame("exportp2-####.png");
}
