import processing.svg.*;

int y = 100;
int x = 0;


//////////Funzione e Variabili per randomizzare la posizione e il colore del tweet//////////



//////////Selezione Font da cui pescare per la randomizzazione//////////

String[] fontList = {"arial.ttf"};

PFont myfont;

//////////Immettere qui nickname//////////

String[] nickname = {
  "@aawilliamsmusic"
};

//////////Immettere qui riga 1//////////

String[] a = {
  "SONGS FROM ISOLATION 004 //"
};

//////////Immettere qui riga 2//////////

String[] b = {
  ""
};

//////////Immettere qui riga 3//////////

String[] c = {
  "Every Day Is Exactly The Same (@nineinchnails cover) for piano, voice and loops."
};

//////////Immettere qui riga 4//////////

String[] d = {
  "The SFI series includes covers suggested by fans, recorded from my home"
};

//////////Immettere qui riga 5//////////

String[] e = {
  "Watch the video & subscribe to my @YouTube channel :"
};

//////////Immettere qui riga 5//////////

String[] f = {
  "http://YouTube.com/c/aawilliamsmusic … pic.twitter.com/WFhKujT6FM"
};


//////////Funzione che randomizza posizione su asse X - ogni volta che viene richiamata aggiunge 120px di interlinea, per averla sottostante//////////

void write_word(String[] words) {
  int n = int(random(words.length));
  textSize(40);
  text(words[n], random (100,400), 120 + y);

  //interlinea
  y = y + 48;
}

//////////Funzione che fissa il nickname in alto a sx a x=100, y=100//////////

void write_nickname(String [] words) {
  int n = int(random(words.length));
  textSize(40);
  text(words[n], 100, 100);
}

//////////Funzione che randomizza il colore del testo e fa scrivere le quattro righe e il nickname//////////

void new_sentence() {
  fill(random(255), random(255), random(255));
  y = 100;

  write_word(a);
  write_word(b);
  write_word(c);
  write_word(d);
  write_word(e);
  write_word(f);
  write_nickname(nickname);
}



//////////Funzione che stampa randomicamente quali e quante keyword da pescare dalla lista di 20 keyword derivate da KeyWorder per ogni profilo//////////

/////->lista delle 20 keyword è presente nel documento excel/////

                 void pesca_numeri() {
                        
                      float k1 = int(random(1,20));
                      float k2 = int(random(1,60));
                      float k3 = int(random(1,60));
                      println("Pesca keyword numero:");
                      println(k1);
                      
                      if  (k2<21){
                        if (k1==k2) {
                          pesca_numeri();
                          }
                         println(k2);
                        }
                      
                      if  (k3<21){
                        if (k1==k3) {
                          pesca_numeri();
                          
                          }
                         println(k3);
                        }
                      
                            int ch = int(random(0,fontList.length));
                            myfont = createFont(fontList[ch],20);
                            textFont(myfont);
                          
                      }



//////////click sulla consolle per far partire la randomizzazione e spazio per fermare il ciclo, lo stop comporta anche il salvataggio di un vile SVG nella cartella dello script//////////

void mousePressed(){
  background(255);
  pesca_numeri();
  new_sentence();
  loop();

}

void setup() {
  background(255);
  size(2400, 1200);
  beginRecord(SVG, "aawilliamsmusic.svg");

}


void draw() {
  background(255);
  pesca_numeri();
  new_sentence();
    }



void keyPressed() {
     noLoop();
     if (key== 'q') {
      endRecord();
      exit();
       
     }

}
