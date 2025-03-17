

extern "C" void printf(char*,...);

        class Foo {int a;
                  } Z;
        Foo func(void){return Z;}
        void func(Foo *p){}



static int si;
  Foo f1(){si+=1; return Z;}
  void f1(Foo *p1){si+=2;}


  Foo &f2(){ si+=3;return Z;}
  void f2(Foo *p2){si+=4;}


  Foo f3(int i1){ si+=5; return Z;}
  void f3(Foo *p3, int ii1){si+=6; }


  Foo &f4(int i4){ si+=7; return Z;}
  void f4(Foo *p4, int ii4){si+=8;}

static int sii;
class TAG {
 public: int aa;
     TAG mf1();
     void mf1(TAG *mp1);
     TAG& mf2();
     void mf2(TAG *);
     TAG   mf3(int);
     void  mf3(TAG*,int);
     TAG &mf4(int);
     void  mf4(TAG*,int);
      }TZ;


  TAG TAG::mf1(){ sii+=1; return TZ;}
  void TAG::mf1(TAG *mp1){sii+=2;}


  TAG &TAG::mf2(){ sii+=3;return TZ;}
  void TAG::mf2(TAG *mp2){sii+=4;}


  TAG TAG::mf3(int i1){ sii+=5;return TZ;}
  void TAG::mf3(TAG *mp3, int ii1){sii+=6; }


  TAG &TAG::mf4(int i4){ sii+=7;return TZ;}
  void TAG::mf4(TAG *mp4, int ii4){sii+=8;}


int main(){
  f1();f1(&Z);f2();f2(&Z);f3(10);f3(&Z,10);f4(10);f4(&Z,10);
  TZ.mf1();TZ.mf1(&TZ);TZ.mf2();TZ.mf2(&TZ);
  TZ.mf3(0);TZ.mf3(&TZ,0);TZ.mf4(10);TZ.mf4(&TZ,10);

  if (si==36 && sii==36)
    printf("ok\n");
  else {
    printf("ng\n");
    printf("%d,%d\n",si,sii);
  }
}
  
