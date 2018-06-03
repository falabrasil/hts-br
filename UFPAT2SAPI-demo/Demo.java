
import UFPAT2S.*;

public class Demo{

  public static void main(String[] args){


  UFPAT2SAPI demo = new UFPAT2SAPI();
  
  //Option DEFAULT uses the builtin model,
  //if you want to use another model 
  //just pass the complete path like
  //demo.initializeTts("/tmp/model");
  demo.initializeTts("DEFAULT");
 
  //Modify option DEFAULT to put the complete path to create wav file
  demo.convertTextToSpeechFile("Seja bem vindo amigo.", "DEFAULT");

  //play wav file
  demo.speakAudioFile();

  //unalloc hts_engine
  demo.finalizeTts();


  
 }

}
