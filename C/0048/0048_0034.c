

#include  "stdio.h"
int mpfunc1 (int d);
int scort01 (void);
int m3mptr01 (void);
int m3edc311 (void);
int mptest13 (void);
int m3edcl08 (void);
int scoprl1 (void);
int m3mpsi04 (void);
int scosh01 (void);
int mptest29 (void);
int m3edc117 (void);
int scobe22 (void);
int m3ermv09 (void);
   void errcheck();
   int *a[5],b,func1(int b),c,err=0;
int 
main (void)
{

   printf("***  **** START ***\n");

   m3ermv09();  
   scobe22();   
   m3edc117();  
   mptest29();  
   scosh01();   
   m3mpsi04();  
   scoprl1();   
   m3edcl08();  
   mptest13();  
   m3edc311();  
   m3mptr01();  
   scort01();   

   printf("***  ****  END  ***\n");

}



int fe1f01(int);

int fe1f02(int a) { return a; }

int 
m3edcl08 (void)
{
  printf("***** M3EDCL08 **  ** START *****\n");
  {
    int a = 10;
    int b;
    int fe1f01(int);
    b = fe1f01(a);

    if (b == 1)
        printf("***** M3EDCL08 - 01 ***** OK *****\n");
      else
        printf("***** M3EDCL08 - 01 ***** NG *****\n");
  }
  {
    int a = 10;
    int b;
    int fe1f02(int);
    b = fe1f02(a);

    if (b == 10)
        printf("***** M3EDCL08 - 02 ***** OK *****\n");
      else
        printf("***** M3EDCL08 - 02 ***** NG *****\n");
  }
  printf("***** M3EDCL08 **  **  END  *****\n");
}

int fe1f01(int a) { return(a / 10); }






 int id01;
 char cd01;
 short int sd01;
 unsigned int uid01;
 unsigned char ucd01;
 unsigned short int usd01;
 float fd01;
 double dd01;
 int 
mptest29 (void)
 {
    void mfnc01(),mfnc02(),mfnc03(),mfnc04(),mfnc05(),mfnc06();
    void mfnc07(),mfnc08();
    mfnc01();
    mfnc02();
    mfnc03();
    mfnc04();
    mfnc05();
    mfnc06();
    mfnc07();
    mfnc08();
 }
 void 
mfnc01 (void)
 {
      int  ia01,ia02,ia03,ia04,ia05;
      void mfnc011(int ia01,int ia02,int ia03,int ia04,int ia05);
      ia01=1;
      ia02=2;
      ia03=3;
      ia04=4;
      ia05=5;
      mfnc011(ia01,ia02,ia03,ia04,ia05);
      if(id01==1)
        printf("******* MFNC01 IA01            OK ****\n");
      else
        printf("******* MFNC01 IA01            NG ****\n");
      if(ia02==2)
        printf("******* MFNC01 IA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 IA05 REAL ARGUM NG ****\n");
      if(ia03==3)
        printf("******* MFNC01 IA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 IA03 REAL ARGUM NG ****\n");
      if(ia05==5)
        printf("******* MFNC01 IA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 IA05 REAL ARGUM NG ****\n");
 }
 void mfnc011(int ib01,int ib02,int ib03,int ib04,int ib05)
 {
      void mfnc0111(int ib04);
      int ic01,ic02;
      ic01=ib03;
      ib05=10;
      ib02=ib01+ic01;
      mfnc0111(ib04);
      ib03=ic01+2;
      ic02=ib05;
      id01=ib01;
      if(ic02==10)
        printf("******* MFNC011 IB05 CHECK     OK ****\n");
      else
        printf("******* MFNC011 IB05 CHECK     NG ****\n");
 }
 void mfnc0111(int ie04)
 {
      ie04=ie04+10;
      return;
 }
 void 
mfnc02 (void)
 {
      char ca01,ca02,ca03,ca04,ca05;
      void mfnc021(char ca01,char ca02,char ca03,char ca04,char ca05);
      ca01='a';
      ca02='b';
      ca03='c';
      ca04='d';
      ca05='e';
      mfnc021(ca01,ca02,ca03,ca04,ca05);
      if(cd01=='a')
        printf("******* MFNC02 CA01            OK ****\n");
      else
        printf("******* MFNC02 CA01            NG ****\n");
      if(ca02=='b')
        printf("******* MFNC02 CA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC02 CA02 REAL ARGUM NG ****\n");
      if(ca03=='c')
        printf("******* MFNC02 CA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC02 CA03 REAL ARGUM NG ****\n");
      if(ca05=='e')
        printf("******* MFNC02 CA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC02 CA05 REAL ARGUM NG ****\n");
 }
 void mfnc021(char cb01,char cb02,char cb03,char cb04,char cb05)
 {
      void mfnc0211(char cb04);
      char cc01;
      cb05=cb03;
      cb02=cb01;
      mfnc0211(cb04);
      cb03='g';
      cc01=cb05;
      cd01=cb01;
      if(cc01=='c')
        printf("******* MFNC021 CB05 CHECK     OK ****\n");
      else
        printf("******* MFNC021 CB05 CHECK     NG ****\n");
 }
 void mfnc0211(char ce04)
 {
      ce04='h';
      return;
 }
 void 
mfnc03 (void)
 {
      short int  sa01,sa02,sa03,sa04,sa05;
      void mfnc031(short int sa01,short int sa02,short int sa03,
                   short int sa04,short int sa05);
      sa01=1;
      sa02=2;
      sa03=3;
      sa04=4;
      sa05=5;
      mfnc031(sa01,sa02,sa03,sa04,sa05);
      if(sd01==1)
        printf("******* MFNC03 SA01            OK ****\n");
      else
        printf("******* MFNC03 SA01            NG ****\n");
      if(sa02==2)
        printf("******* MFNC03 SA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC03 SA05 REAL ARGUM NG ****\n");
      if(sa03==3)
        printf("******* MFNC01 SA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 SA03 REAL ARGUM NG ****\n");
      if(sa05==5)
        printf("******* MFNC01 SA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 SA05 REAL ARGUM NG ****\n");
 }
 void mfnc031(short int sb01,short int sb02,short int sb03,
              short int sb04,short int sb05)
 {
      void mfnc0311(short int sb04);
      short int sc01,sc02;
      sc01=sb03;
      sb05=10;
      sb02=sb01+sc01;
      mfnc0311(sb04);
      sb03=sc01+2;
      sc02=sb05;
      sd01=sb01;
      if(sc02==10)
        printf("******* MFNC031 SB05 CHECK     OK ****\n");
      else
        printf("******* MFNC031 SB05 CHECK     NG ****\n");
 }
 void mfnc0311(short int se04)
 {
      se04=se04+10;
      return;
 }
 void 
mfnc04 (void)
 {
      unsigned int  uia01,uia02,uia03,uia04,uia05;
      void mfnc041(unsigned int uia01,unsigned int uia02,
       unsigned int uia03,unsigned int uia04,unsigned int uia05);
      uia01=1;
      uia02=2;
      uia03=3;
      uia04=4;
      uia05=5;
      mfnc041(uia01,uia02,uia03,uia04,uia05);
      if(uid01==1)
        printf("******* MFNC04 UIA01           OK ****\n");
      else
        printf("******* MFNC04 UIA01           NG ****\n");
      if(uia02==2)
        printf("******* MFNC04 UIA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC04 UIA05 REAL ARGUM NG ****\n");
      if(uia03==3)
        printf("******* MFNC04 UIA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC04 UIA03 REAL ARGUM NG ****\n");
      if(uia05==5)
        printf("******* MFNC04 UIA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 UIA05 REAL ARGUM NG ****\n");
 }
 void mfnc041(unsigned int uib01,unsigned int uib02,
         unsigned int uib03,unsigned int uib04,unsigned int uib05)
 {
      void mfnc0411(unsigned int uib04);
      unsigned int uic01,uic02;
      uic01=uib03;
      uib05=10;
      uib02=uib01+uic01;
      mfnc0411(uib04);
      uib03=uic01+2;
      uic02=uib05;
      uid01=uib01;
      if(uic02==10)
        printf("******* MFNC041 UIB05 CHECK    OK ****\n");
      else
        printf("******* MFNC041 UIB05 CHECK    NG ****\n");
 }
 void mfnc0411(unsigned int uie04)
 {
      uie04=uie04+10;
      return;
 }
 void 
mfnc05 (void)
 {
      unsigned char uca01,uca02,uca03,uca04,uca05;
      void mfnc051(unsigned char uca01,unsigned char uca02,
      unsigned char uca03,unsigned char uca04,unsigned char uca05);
      uca01='a';
      uca02='b';
      uca03='c';
      uca04='d';
      uca05='e';
      mfnc051(uca01,uca02,uca03,uca04,uca05);
      if(ucd01=='a')
        printf("******* MFNC05 UCA01           OK ****\n");
      else
        printf("******* MFNC05 UCA01           NG ****\n");
      if(uca02=='b')
        printf("******* MFNC05 UCA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC05 UCA02 REAL ARGUM NG ****\n");
      if(uca03=='c')
        printf("******* MFNC05 UCA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC05 UCA03 REAL ARGUM NG ****\n");
      if(uca05=='e')
        printf("******* MFNC05 UCA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC05 UCA05 REAL ARGUM NG ****\n");
 }
 void mfnc051(unsigned char ucb01,unsigned char ucb02,
      unsigned char ucb03,unsigned char ucb04,unsigned char ucb05)
 {
      void mfnc0511(unsigned char ucb04);
      unsigned char ucc01;
      ucb05=ucb03;
      ucb02=ucb01;
      mfnc0511(ucb04);
      ucb03='g';
      ucc01=ucb05;
      ucd01=ucb01;
      if(ucc01=='c')
        printf("******* MFNC051 UCB05 CHECK    OK ****\n");
      else
        printf("******* MFNC051 UCB05 CHECK    NG ****\n");
 }
 void mfnc0511(unsigned char uce04)
 {
      uce04='h';
      return;
 }
 void 
mfnc06 (void)
 {
      unsigned short int usa01,usa02,usa03,usa04,usa05;
      void mfnc061(unsigned short int usa01,unsigned short int usa02,
      unsigned short int usa03,unsigned short int sa04,
      unsigned short int usa05);
      usa01=1;
      usa02=2;
      usa03=3;
      usa04=4;
      usa05=5;
      mfnc061(usa01,usa02,usa03,usa04,usa05);
      if(usd01==1)
        printf("******* MFNC06 USA01           OK ****\n");
      else
        printf("******* MFNC06 USA01           NG ****\n");
      if(usa02==2)
        printf("******* MFNC06 USA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC06 USA05 REAL ARGUM NG ****\n");
      if(usa03==3)
        printf("******* MFNC06 USA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC06 USA03 REAL ARGUM NG ****\n");
      if(usa05==5)
        printf("******* MFNC06 USA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 USA05 REAL ARGUM NG ****\n");
 }
 void mfnc061(unsigned short int usb01,unsigned short int usb02,
      unsigned short int usb03,unsigned short int usb04,
      unsigned short int usb05)
 {
      void mfnc0611(unsigned short int usb04);
      unsigned short int usc01,usc02;
      usc01=usb03;
      usb05=10;
      usb02=usb01+usc01;
      mfnc0611(usb04);
      usb03=usc01+2;
      usc02=usb05;
      usd01=usb01;
      if(usc02==10)
        printf("******* MFNC061 USB05 CHECK    OK ****\n");
      else
        printf("******* MFNC061 USB05 CHECK    NG ****\n");
 }
 void mfnc0611(unsigned short int use04)
 {
      use04=use04+10;
      return;
 }
 void 
mfnc07 (void)
 {
      float fa01,fa02,fa03,fa04,fa05;
      void mfnc071(float fa01,float fa02,float fa03,
                   float fa04,float fa05);
      fa01=1;
      fa02=2;
      fa03=3;
      fa04=4;
      fa05=5;
      mfnc071(fa01,fa02,fa03,fa04,fa05);
      if(fd01==1)
        printf("******* MFNC07 FA01            OK ****\n");
      else
        printf("******* MFNC07 FA01            NG*****\n");
      if(fa02==2)
        printf("******* MFNC07 FA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC07 FA05 REAL ARGUM NG ****\n");
      if(fa03==3)
        printf("******* MFNC07 FA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC07 FA03 REAL ARGUM NG ****\n");
      if(fa05==5)
        printf("******* MFNC07 FA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC07 FA05 REAL ARGUM NG ****\n");
 }
 void mfnc071(float fb01,float fb02,float fb03,float fb04,float fb05)
 {
      void mfnc0711(float fb04);
      float fc01,fc02;
      fc01=fb03;
      fb05=10;
      fb02=fb01+fc01;
      mfnc0711(fb04);
      fb03=fc01+2;
      fc02=fb05;
      fd01=fb01;
      if(fc02==10)
        printf("******* MFNC071 FB05 CHECK     OK ****\n");
      else
        printf("******* MFNC071 FB05 CHECK     NG ****\n");
 }
 void mfnc0711(float fe04)
 {
      fe04=fe04+10;
      return;
 }
 void 
mfnc08 (void)
 {
      double da01,da02,da03,da04,da05;
      void mfnc081(double da01,double da02,double da03,
                   double da04,double da05);
      da01=1;
      da02=2;
      da03=3;
      da04=4;
      da05=5;
      mfnc081(da01,da02,da03,da04,da05);
      if(dd01==1)
        printf("******* MFNC08 DA01            OK ****\n");
      else
        printf("******* MFNC08 DA01            NG ****\n");
      if(da02==2)
        printf("******* MFNC08 DA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC08 DA05 REAL ARGUM NG ****\n");
      if(da03==3)
        printf("******* MFNC08 DA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC08 DA03 REAL ARGUM NG ****\n");
      if(da05==5)
        printf("******* MFNC08 DA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC08 DA05 REAL ARGUM NG ****\n");
 }
 void mfnc081(double db01,double db02,double db03,
                   double db04,double db05)
 {
      void mfnc0811(double db04);
      double dc01,dc02;
      dc01=db03;
      db05=10;
      db02=db01+dc01;
      mfnc0811(db04);
      db03=dc01+2;
      dc02=db05;
      dd01=db01;
      if(dc02==10)
        printf("******* MFNC081 DB05 CHECK     OK ****\n");
      else
        printf("******* MFNC081 DB05 CHECK     NG ****\n");
 }
 void mfnc0811(double de04)
 {
      de04=de04+10;
      return;
 }

int   be1f1();
void  be1f2();
int     be1e1;
int 
scort01 (void)
{
    int a1 = 0;
    be1e1=0;

    printf("********** SCORT01 TEST STARTED **********\n") ;

    a1 = be1f1();
    if (a1 == 1)
        printf("********** RETURN OK **********\n");
    else
        printf("********** RETURN NG **********\n");
    be1f2();
    be1f1();

    printf("********** SCORT01 TEST ENDED **********\n")   ;

}
int 
be1f1 (void)
{
    be1e1++;
    return be1e1;
}
void 
be1f2 (void)
{
    be1e1++;
}





int 
m3ermv09 (void)
{
  printf("********** M3ERMV09 TEST START **********\n");
  {
    int a,b = 1,c = 2,d = 3;

    a = b * 1 * ( c * d );
    if (a == 6)
        printf("***** M3ERMV09 - 01 ***** O K *****\n");
      else
        printf("***** M3ERMV09 - 01 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 6;

    a = b & 3 & ( c & d );
    if (a == 0)
        printf("***** M3ERMV09 - 02 ***** O K *****\n");
      else
        printf("***** M3ERMV09 - 02 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 6;

    a = b ^ 3 ^ ( c ^ d );
    if (a == 6)
        printf("***** M3ERMV09 - 03 ***** O K *****\n");
      else
        printf("***** M3ERMV09 - 03 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 6;

    a = b | 3 | ( c | d );
    if (a == 7)
        printf("***** M3ERMV09 - 04 ***** O K *****\n");
      else
        printf("***** M3ERMV09 - 04 ***** N G *****\n");
  }
  {
    int a,b = 1;

    a = b * 1 * 2;
    if (a == 2)
        printf("***** M3ERMV09 - 05 ***** O K *****\n");
      else
        printf("***** M3ERMV09 - 05 ***** N G *****\n");
  }
  {
    int a,b = 1;

    a = b & 3 & 7;
    if (a == 1)
        printf("***** M3ERMV09 - 06 ***** O K *****\n");
      else
        printf("***** M3ERMV09 - 06 ***** N G *****\n");
  }
  {
    int a,b = 1;

    a = b ^ 2 ^ 4;
    if (a == 7)
        printf("***** M3ERMV09 - 07 ***** O K *****\n");
      else
        printf("***** M3ERMV09 - 07 ***** N G *****\n");
  }
  {
    int a,b = 1;

    a = b | 5 | 4;
    if (a == 5)
        printf("***** M3ERMV09 - 08 ***** O K *****\n");
      else
        printf("***** M3ERMV09 - 08 ***** N G *****\n");
  }
  printf("********** M3ERMV09 TEST  END  **********\n");
}



int 
m3mptr01 (void)
{
  int flag=0;
  int i=0;
  int c=3;
  int hs=3;
  while(1){
    if(i==2){
      flag=1;
      goto switches ;
    }
    i++;
  }
  switches:;
  flag++;
  switch(c){
    case 0:break;
    case 1:
           printf("CASE1\n");
           break;
    case 2:
           printf("CASE2\n");
           break;
    case 3:
           printf("CASE3\n");
           flag++;
           break;
    }
  if(flag==3)
    printf("***** OK *****\n");
  else
    printf("***** NG *****\n");
}



int 
scosh01 (void)
{
  #define iosi 0x00000002
  #define sosi 0x00004000
  #define ioi  0x00008000
  #define soi  0x40000000
  #define ooi  0x80000000

  short int      si  = 3                                         ;
  short int      tsi                                             ;

  int            i   = 3                                         ;
  int            ti                                              ;


  printf("********** SCOSH01 TEST STARTED **********\n")     ;


  tsi = si * iosi                                                ;
  if  (tsi == 6)
    printf("********** SCOSH01 -01 OK **********\n")         ;
  else
    printf("********** SCOSH01 -01 NG **********\n")         ;

  ti = si * sosi                                                 ;
  if  (ti == 0x0000c000)
    printf("********** SCOSH01 -02 OK **********\n")         ;
  else
    printf("********** SCOSH01 -02 NG **********\n")         ;

  ti = i * ioi                                                   ;
  if  (ti == 0x00018000)
    printf("********** SCOSH01 -03 OK **********\n")         ;
  else
    printf("********** SCOSH01 -03 NG **********\n")         ;

  ti = i * soi                                                   ;
  if  (ti == 0xc0000000)
    printf("********** SCOSH01 -04 OK **********\n")         ;
  else
    printf("********** SCOSH01 -04 NG **********\n")         ;

  ti = i * ooi                                                   ;
#if INT64
  if  (ti == 0x180000000)
#else
  if  (ti == 0x80000000)
#endif
    printf("********** SCOSH01 -05 OK **********\n")         ;
  else
    printf("********** SCOSH01 -05 NG **********\n")         ;




  tsi = iosi * si                                                ;
  if  (tsi == 6)
    printf("********** SCOSH01 -06 OK **********\n")         ;
  else
    printf("********** SCOSH01 -06 NG **********\n")         ;

  ti = sosi * si                                                 ;
  if  (ti == 0x0000c000)
    printf("********** SCOSH01 -07 OK **********\n")         ;
  else
    printf("********** SCOSH01 -07 NG **********\n")         ;

  ti = ioi * i                                                   ;
  if  (ti == 0x00018000)
    printf("********** SCOSH01 -08 OK **********\n")         ;
  else
    printf("********** SCOSH01 -08 NG **********\n")         ;

  ti = soi * i                                                   ;
  if  (ti == 0xc0000000)
    printf("********** SCOSH01 -09 OK **********\n")         ;
  else
    printf("********** SCOSH01 -09 NG **********\n")         ;

  ti = ooi * i                                                   ;
#if INT64
  if  (ti == 0x180000000)
#else
  if  (ti == 0x80000000)
#endif
    printf("********** SCOSH01 -10 OK **********\n")         ;
  else
    printf("********** SCOSH01 -10 NG **********\n")         ;


  printf("********** SCOSH01 TEST ENDED **********\n")       ;

}



struct tag2
{
  int a;
} ;

struct tag3
{
  int b;
};

struct tag1
{
  struct tag2 s;
  struct tag3 t[5];
};

struct tag2 g1 = { { 6 } };
struct tag3 g2 = { { 7 } };

int cc=4;

int 
scobe22 (void)
{
    static struct tag1 st1={ { 0 },
                              { 1,2,3,4,5 }
                           };
    struct tag1 st2;
    struct tag1 *p;

    st2=st1;
    p=&st1;
    p->s =       g1;
    p->t[3] =  g2;
    p->t[cc] = g2;

    if (p->s.a==6)
       printf ("***** OK *****\n");
    else
       printf ("***** NG *****\n");
    if (p->t[3].b==7)
       printf ("***** OK *****\n");
    else
       printf ("***** NG *****\n");
    if (p->t[cc].b==7)
       printf ("***** OK *****\n");
    else
       printf ("***** NG *****\n");
}


int 
mptest13 (void)
     {
      void mperck();
        printf("\n*** MPTEST13 -- START ***\n") ;
        b=400 ;
        a[0]=&b ;
        mpfunc1(b);
        c=*a[0] ;
        if(c==400) printf("*** OK C = %d ***\n",c) ;
        else  {   printf("*** NG C = %d ***\n",c) ;
                   err++;
              }
        mperck();
        printf("\n*** MPTEST13 -- END   ***\n") ;
     }
   int 
mpfunc1 (int d)
     {
        int e ;
        d=d+200;
        a[1]=&d ;
        e=*a[1] ;
        if(e==600) printf("*** OK E = %d ***\n",e) ;
        else  {   printf("*** NG E = %d ***\n",e) ;
                   err++;
              }
     }
 void 
mperck (void)
 {
      if(err==0)
       {
         printf("***    OK         ***\n");
       }
      else
       {
         printf("***    NG         ***\n");
       }
 }



 int  fe1a4[2];
 int fe1a5;

int 
m3edc117 (void)
{

   auto   int a1;
   register  int a2,b2=-1;
   static   int a3[2]={-1,1};
   extern   int fe1a4[2];
   extern  int fe1a5;


   printf("*** M3EDC117 ** MK3 TEST FOR DCL ** STARTED ***\n");

   a1 = 100;
   if (a1!=100)
       printf(" *** M3EDC117 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC117 TEST-01 OK ***\n");

   a2 = -1;
   if (a2!=-1 || b2!=-1)
       printf(" *** M3EDC117 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC117 TEST-02 OK ***\n");

   if (a3[0]!=-1 || a3[1]!=1)
       printf(" *** M3EDC117 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC117 TEST-03 OK ***\n");

   if (fe1a4[0]!=0 || fe1a4[1]!=0)
       printf(" *** M3EDC117 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC117 TEST-04 OK ***\n");

   if (fe1a5)
       printf(" *** M3EDC117 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC117 TEST-05 OK ***\n");

   printf("*** M3EDC117 TEST ENDED ***\n");
}




void f7f3(register volatile const unsigned long int);
void f7f2(register volatile const unsigned int);
void f7f1(register volatile const int);
void f7f0(register volatile const int );

int 
m3edc311 (void)
{
  f7f3(1ul);
  f7f2(1u);
  f7f1(1);
  f7f0(1);
}

void 
f7f3 (register volatile const unsigned long int a)
{
  if (a == 1ul)
      printf("***** M3EDC311 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC311 - 01 ***** N G *****\n");
}

void 
f7f2 (register volatile const unsigned int a)
{
  if (a == 1u)
      printf("***** M3EDC311 - 02 ***** O K *****\n");
    else
      printf("***** M3EDC311 - 02 ***** N G *****\n");
}

void 
f7f1 (register volatile const int a)
{
  if (a == 1)
      printf("***** M3EDC311 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC311 - 03 ***** N G *****\n");
}

void 
f7f0 (register volatile const int  a)
{
  if (a == 1)
      printf("***** M3EDC311 - 04 ***** O K *****\n");
    else
      printf("***** M3EDC311 - 04 ***** N G *****\n");
}




  int 
m3mpsi04 (void){
 struct m2tag {
  int mema;
  int memb;
  char memc[4];
  };
 struct m2tag var1,var2,var3,*pint;
 int a[10];
 int x,y;
 pint=&var3;
 pint->mema=5;
 pint->memb=15;
 a[4]=5;
 a[pint->mema]=3;
 pint=&var2;
 pint->memb=4;
 x=pint->memb;
 pint->memb=a[4];
 x=pint->memb;
 pint=&var3;
 y=x;
 a[1]=y;
 pint=&var3;
 pint->memc[1]=y+pint->memb;
 if (pint->memc[1]==20) printf("M3MPSI04 OK\n");
 else
 printf("M3MPSI04 NG\n");
 }



int 
scoprl1 (void)
{
    int i1,i2,i3,i4,*pi,ii                                      ;
    short int *p1,*p2                                           ;

    printf("********** SCOPRL1 STARTED *********\n")  ;

    i1     = 1                                                  ;
    i2     = 2                                                  ;

    p1     =  (short int*) &i1                                  ;
    p2     =  (short int*) &i2                                  ;
    pi     =  &i1                                               ;

    i3     = *(int *)p1                                         ;
    i4     = *(int *)p2                                         ;
    ii     = *pi                                                ;

    if (i3 == 1 )
        printf("********** SCOPRL1 -01 OK **********\n")    ;
    else
        printf("********** SCOPRL1 -01 NG **********\n")    ;

    if (ii == 1 )
        printf("********** SCOPRL1 -01.5 OK **********\n")  ;
    else
        printf("********** SCOPRL1 -01.5 NG **********\n")  ;

    if (i4 == 2 )
        printf("********** SCOPRL1 -02 OK **********\n")    ;
    else
        printf("********** SCOPRL1 -02 NG **********\n")    ;

    printf("********** SCOPRL1 ENDED **********\n")    ;

}
