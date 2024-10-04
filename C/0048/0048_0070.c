

#define proc     {
#define endproc  }



#include<stdio.h>
#include<stdlib.h>
int mp1fnc (int *j);
int fcfnc2 (void);
int fcfnc1 (void);
int fbfnc4 (void);
int fbfnc3 (void);
int fbfnc2 (void);
int fbfnc1 (void);
int m3grtn04 (void);
int m3mprd06 (void);
int m3grel04 (void);
int mptest07 (void);
int scrna08 (void);
int m3gsiz03 (void);
int mptest41(void);
int m3gswh09 (void);
int main()
{

   printf("***  **** START ***\n\n");
  {
   void scrsk17();

   m3gswh09();  
   mptest41();  
   m3gsiz03();  
   scrna08();   
   mptest07();  
   m3grel04();  
   m3mprd06();  
   scrsk17();   
   m3grtn04();  
 }
   printf("\n***  ****  END  ***\n");

}








int 
m3gswh09 (void)  {

            char   c1=1;
            char   c2=2;
            char   c3=3;
            char   c4=4;
            char   c5=5;
            char   c6=10;
            char   c7=100;
            char   c8=127;
   unsigned char   uc1=1;
   unsigned char   uc2=2;
   unsigned char   uc3=3;
   unsigned char   uc4=4;
   unsigned char   uc5=5;
   unsigned char   uc6=10;
   unsigned char   uc7=100;
   unsigned char   uc8=127;

   int a1,a2,a3,a4,a5,a6,a7,a8;
   int b1,b2,b3,b4,b5,b6,b7,b8;

  printf("M3GSWH09 TEST-START \n");

   switch(c1)  {
     case (char)5:
       a1=5;
       break;
     case (char)10:
     case (char)100:
       a1=10;
       break;
     case (char)127:
       a1=20;
     default:
       a1=0;
  }
  if(a1==0)
    printf("M3GSWH09 1-1 TEST -O  K- \n");
  else
    printf("M3GSWH09 1-1 TEST - NG - \n");

   switch(c2)  {
     case (unsigned char)5:
       a2=5;
       break;
     case (unsigned char)10:
     case (unsigned char)100:
       a2=10;
       break;
     case (unsigned char)127:
       a2=20;
     default:
       a2=0;
  }
  if(a2==0)
    printf("M3GSWH09 1-2 TEST -O  K- \n");
  else
    printf("M3GSWH09 1-2 TEST - NG - \n");

   switch(c3)  {
     case (short)5:
       a3=5;
       break;
     case (short)10:
     case (short)100:
       a3=10;
       break;
     case (short)127:
       a3=20;
     default:
       a3=0;
  }
  if(a3==0)
    printf("M3GSWH09 1-3 TEST -O  K- \n");
  else
    printf("M3GSWH09 1-3 TEST - NG - \n");

   switch(c4)  {
     case (unsigned short)5:
       a4=5;
       break;
     case (unsigned short)10:
     case (unsigned short)100:
       a4=10;
       break;
     case (unsigned short)127:
       a4=20;
     default:
       a4=0;
  }
  if(a4==0)
    printf("M3GSWH09 1-4 TEST -O  K- \n");
  else
    printf("M3GSWH09 1-4 TEST - NG - \n");

   switch(c5)  {
     case 5:
       a5=5;
       break;
     case 10:
     case 100:
       a5=10;
       break;
     case 127:
       a5=20;
     default:
       a5=0;
  }
  if(a5==5)
    printf("M3GSWH09 1-5 TEST -O  K- \n");
  else
    printf("M3GSWH09 1-5 TEST - NG - \n");

   switch(c6)  {
     case (unsigned int)5:
       a6=5;
       break;
     case (unsigned int)10:
     case (unsigned int)100:
       a6=10;
       break;
     case (unsigned int)127:
       a6=20;
     default:
       a6=0;
  }
  if(a6==10)
    printf("M3GSWH09 1-6 TEST -O  K- \n");
  else
    printf("M3GSWH09 1-6 TEST - NG - \n");

   switch(c7)  {
     case (long int)5:
       a7=5;
       break;
     case (long int)10:
     case (long int)100:
       a7=10;
       break;
     case (long int)127:
       a7=20;
     default:
       a7=0;
  }
  if(a7==10)
    printf("M3GSWH09 1-7 TEST -O  K- \n");
  else
    printf("M3GSWH09 1-7 TEST - NG - \n");

   switch(c8)  {
     case (unsigned long int)5:
       a8=5;
       break;
     case (unsigned long int)10:
     case (unsigned long int)100:
       a8=10;
       break;
     case (unsigned long int)127:
       a8=20;
     default:
       a8=0;
  }
  if(a8==0)
    printf("M3GSWH09 1-8 TEST -O  K- \n");
  else
    printf("M3GSWH09 1-8 TEST - NG - \n");

   switch(uc1)  {
     case (char)5:
       b1=5;
       break;
     case (char)10:
     case (char)100:
       b1=10;
       break;
     case (char)127:
       b1=20;
     default:
       b1=0;
  }
  if(b1==0)
    printf("M3GSWH09 2-1 TEST -O  K- \n");
  else
    printf("M3GSWH09 2-1 TEST - NG - \n");

   switch(uc2)  {
     case (unsigned char)5:
       b2=5;
       break;
     case (unsigned char)10:
     case (unsigned char)100:
       b2=10;
       break;
     case (unsigned char)127:
       b2=20;
     default:
       b2=0;
  }
  if(b2==0)
    printf("M3GSWH09 2-2 TEST -O  K- \n");
  else
    printf("M3GSWH09 2-2 TEST - NG - \n");

   switch(uc3)  {
     case (short)5:
       b3=5;
       break;
     case (short)1:
     case (short)10:
       b3=10;
       break;
     case (short)20:
       b3=20;
     default:
       b3=0;
  }
  if(b3==0)
    printf("M3GSWH09 2-3 TEST -O  K- \n");
  else
    printf("M3GSWH09 2-3 TEST - NG - \n");

   switch(uc4)  {
     case (unsigned short)5:
       b4=5;
       break;
     case (unsigned short)10:
     case (unsigned short)100:
       b4=10;
       break;
     case (unsigned short)127:
       b4=20;
     default:
       b4=0;
  }
  if(b4==0)
    printf("M3GSWH09 2-4 TEST -O  K- \n");
  else
    printf("M3GSWH09 2-4 TEST - NG - \n");

   switch(uc5)  {
     case 5:
       b5=5;
       break;
     case 10:
     case 100:
       b5=10;
       break;
     case 127:
       b5=20;
     default:
       b5=0;
  }
  if(b5==5)
    printf("M3GSWH09 2-5 TEST -O  K- \n");
  else
    printf("M3GSWH09 2-5 TEST - NG - \n");

   switch(uc6)  {
     case (unsigned int)5:
       b6=5;
       break;
     case (unsigned int)1:
     case (unsigned int)10:
       b6=10;
       break;
     case (unsigned int)20:
       b6=20;
     default:
       b6=0;
  }
  if(b6==10)
    printf("M3GSWH09 2-6 TEST -O  K- \n");
  else
    printf("M3GSWH09 2-6 TEST - NG - \n");

   switch(uc7)  {
     case (long int)5:
       b7=5;
       break;
     case (long int)10:
     case (long int)100:
       b7=10;
       break;
     case (long int)127:
       b7=20;
     default:
       b7=0;
  }
  if(b7==10)
    printf("M3GSWH09 2-7 TEST -O  K- \n");
  else
    printf("M3GSWH09 2-7 TEST - NG - \n");

   switch(uc8)  {
     case (unsigned long int)5:
       b8=5;
       break;
     case (unsigned long int)10:
     case (unsigned long int)100:
       b8=10;
       break;
     case (unsigned long int)127:
       b8=20;
     default:
       b8=0;
  }
  if(b8==0)
    printf("M3GSWH09 2-8 TEST -O  K- \n");
  else
    printf("M3GSWH09 2-8 TEST - NG - \n");

  printf("M3GSWH09 TEST-END \n");

}




     struct fatg {
                char  sc1;
                char  sc2;
                char  sc3;
                char  sc4;
       unsigned char  uc1;
       unsigned char  uc2;
       unsigned char  uc3;
       unsigned char  uc4;
                short ss1;
                short ss2;
                short ss3;
                short ss4;
       unsigned short us1;
       unsigned short us2;
       unsigned short us3;
       unsigned short us4;
    } fast1,*fast2=&fast1;

int 
m3grtn04 (void)  {

     int  a1,a2,a3,a4,b1,b2,b3,b4;
     int  c1,c2,c3,c4,d1,d2,d3,d4;

              int   faf1(),faf2(),faf3(),faf4();
     unsigned int   faf5(),faf6(),faf7(),faf8();
              long  faf9(),faf10(),faf11(),faf12();
     unsigned long  faf13(),faf14(),faf15(),faf16();

    fast2->sc1=1,fast2->sc2=2,fast2->sc3=3,fast2->sc4=4;
    fast2->uc1=1,fast2->uc2=2,fast2->uc3=3,fast2->uc4=4;
    fast2->ss1=1,fast2->ss2=2,fast2->ss3=3,fast2->ss4=4;
    fast2->us1=1,fast2->us2=2,fast2->us3=3,fast2->us4=4;

  printf("M3GRTN04 TEST-START \n");

     a1=faf1();
     if(a1==1)
        printf("M3GRTN04 1-1 TEST -O  K- \n");
     else
        printf("M3GRTN04 1-1 TEST - NG - \n");

     a2=faf2();
     if(a2==1)
        printf("M3GRTN04 1-2 TEST -O  K- \n");
     else
        printf("M3GRTN04 1-2 TEST - NG - \n");

     a3=faf3();
     if(a3==1)
        printf("M3GRTN04 1-3 TEST -O  K- \n");
     else
        printf("M3GRTN04 1-3 TEST - NG - \n");

     a4=faf4();
     if(a4==1)
        printf("M3GRTN04 1-4 TEST -O  K- \n");
     else
        printf("M3GRTN04 1-4 TEST - NG - \n");

     b1=faf5();
     if(b1==2)
        printf("M3GRTN04 2-1 TEST -O  K- \n");
     else
        printf("M3GRTN04 2-1 TEST - NG - \n");

     b2=faf6();
     if(b2==2)
        printf("M3GRTN04 2-2 TEST -O  K- \n");
     else
        printf("M3GRTN04 2-2 TEST - NG - \n");

     b3=faf7();
     if(b3==2)
        printf("M3GRTN04 2-3 TEST -O  K- \n");
     else
        printf("M3GRTN04 2-3 TEST - NG - \n");

     b4=faf8();
     if(b4==2)
        printf("M3GRTN04 2-4 TEST -O  K- \n");
     else
        printf("M3GRTN04 2-4 TEST - NG - \n");

     c1=faf9();
     if(c1==3)
        printf("M3GRTN04 3-1 TEST -O  K- \n");
     else
        printf("M3GRTN04 3-1 TEST - NG - \n");

     c2=faf10();
     if(c2==3)
        printf("M3GRTN04 3-2 TEST -O  K- \n");
     else
        printf("M3GRTN04 3-2 TEST - NG - \n");

     c3=faf11();
     if(c3==3)
        printf("M3GRTN04 3-3 TEST -O  K- \n");
     else
        printf("M3GRTN04 3-3 TEST - NG - \n");

     c4=faf12();
     if(c4==3)
        printf("M3GRTN04 3-4 TEST -O  K- \n");
     else
        printf("M3GRTN04 3-4 TEST - NG - \n");

     d1=faf13();
     if(d1==4)
        printf("M3GRTN04 4-1 TEST -O  K- \n");
     else
        printf("M3GRTN04 4-1 TEST - NG - \n");

     d2=faf14();
     if(d2==4)
        printf("M3GRTN04 4-2 TEST -O  K- \n");
     else
        printf("M3GRTN04 4-2 TEST - NG - \n");

     d3=faf15();
     if(d3==4)
        printf("M3GRTN04 4-3 TEST -O  K- \n");
     else
        printf("M3GRTN04 4-3 TEST - NG - \n");

     d4=faf16();
     if(d4==4)
        printf("M3GRTN04 4-4 TEST -O  K- \n");
     else
        printf("M3GRTN04 4-4 TEST - NG - \n");

  printf("M3GRTN04 TEST-END \n");
}

  int 
faf1 (void) {
        return(fast2->sc1);
  }

  int 
faf2 (void) {
        return(fast2->uc1);
  }

  int 
faf3 (void) {
        return(fast2->ss1);
  }

  int 
faf4 (void) {
        return(fast2->us1);
  }

  unsigned int 
faf5 (void) {
        return(fast2->sc2);
  }

  unsigned int 
faf6 (void) {
        return(fast2->uc2);
  }

  unsigned int 
faf7 (void) {
        return(fast2->ss2);
  }

  unsigned int 
faf8 (void) {
        return(fast2->us2);
  }

  long 
faf9 (void) {
        return(fast2->sc3);
  }

  long 
faf10 (void) {
        return(fast2->uc3);
  }

  long 
faf11 (void) {
        return(fast2->ss3);
  }

  long 
faf12 (void) {
        return(fast2->us3);
  }

  unsigned long 
faf13 (void) {
        return(fast2->sc4);
  }

  unsigned long 
faf14 (void) {
        return(fast2->uc4);
  }

  unsigned long 
faf15 (void) {
        return(fast2->ss4);
  }

  unsigned long 
faf16 (void) {
        return(fast2->us4);
  }



int 
m3grel04 (void)
{
  printf("M3GREL04 START\n");
  fbfnc1();
  fbfnc2();
  fbfnc3();
  fbfnc4();
  printf("M3GREL04 END  \n");
}
int 
fbfnc1 (void){
  float fa=1.0,fb=2.0;
  int a=0;
  a =(fa>=fb)+(0.0>=fa)+(fa>=3.0)+(1.0>=2.0);
  if (a==0)
    printf("M3GREL04 FBFNC1 OK\n");
  else {
    printf("M3GREL04 FBFNC1 NG\n");
    printf("A=%d\n",a);
  }
}
int 
fbfnc2 (void){
  volatile int a[3] ,*ap1,*ap2;
           int b[3] ,*bp1,*bp2;
  int x=0;
  ap1=a;
  ap2=a+1;
  bp1=b;
  bp2=b+1;

  x =(ap1>=ap2)+(bp1>=bp2);
  if (x==0)
    printf("M3GREL04 FBFNC2 OK\n");
  else {
    printf("M3GREL04 FBFNC2 NG\n");
    printf("X=%d\n",x);
  }
}
volatile int xa[2];
int 
fbfnc3 (void){
  volatile int *ap1,*ap2;
  int x=0;
  ap1=xa;
  ap2=xa+1;
  {
    extern volatile int xa[2];
  }
  x =(ap1>=ap2);
  if (x==0)
    printf("M3GREL04 FBFNC3 OK\n");
  else {
    printf("M3GREL04 FBFNC3 NG\n");
    printf("X=%d\n",x);
  }
}
int b[2];
int 
fbfnc4 (void){
  int *ap1,*ap2;
  int x=0;
  ap1=b;
  ap2=b+1;
  {
    extern int b[2];
  }
  x =(ap1>=ap2);
  if (x==0)
    printf("M3GREL04 FBFNC4 OK\n");
  else {
    printf("M3GREL04 FBFNC4 NG\n");
    printf("X=%d\n",x);
  }
}



int 
m3gsiz03 (void)
{
  printf("M3GSIZ03 START\n");
  fcfnc1();
  fcfnc2();
  printf("M3GSIZ03 END  \n");
}
int 
fcfnc1 (void){
  static char           ch = 1;
  static signed char    sc = 1;
  static unsigned char  uc = 1;
  static int           in = 1, a, b;
  static signed int    si = 1;
  static unsigned int  ui = 1;
  static short int           sh = 1;
  static signed short int    ss = 1;
  static unsigned short int  us = 1;
  static long int           lo = 1;
  static signed long int    sl = 1;
  static unsigned long int  ul = 1;
  static float        fl = 1.0f;
  static double       db = 1.0 ;
  static long double  ld = 1.0l;

  a = sizeof(ch+in);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC1-1 OK\n");
  else
    printf("M3GSIZ03 FCFNC1-1 NG\n");

  a = sizeof(sc+si);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC1-2 OK\n");
  else
    printf("M3GSIZ03 FCFNC1-2 NG\n");

  a = sizeof(uc+sh);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC1-3 OK\n");
  else
    printf("M3GSIZ03 FCFNC1-3 NG\n");

  a = sizeof(in*fl);
  if (a == 4)
    printf("M3GSIZ03 FCFNC1-4 OK\n");
  else
    printf("M3GSIZ03 FCFNC1-4 NG\n");

  a = sizeof(si/db);
  if (a == 8)
    printf("M3GSIZ03 FCFNC1-5 OK\n");
  else
    printf("M3GSIZ03 FCFNC1-5 NG\n");

  a = sizeof(ui%ul);
#if INT64||LONG64 || __x86_64__ || __aarch64__
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC1-6 OK\n");
  else
    printf("M3GSIZ03 FCFNC1-6 NG\n");

  a = sizeof(sh>in);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC1-7 OK\n");
  else
    printf("M3GSIZ03 FCFNC1-7 NG\n");

  a = sizeof(ss<si);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC1-8 OK\n");
  else
    printf("M3GSIZ03 FCFNC1-8 NG\n");

  a = sizeof(us-sl);
#if INT64||LONG64 || __x86_64__ || __aarch64__
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC1-9 OK\n");
  else
    printf("M3GSIZ03 FCFNC1-9 NG\n");

  a = sizeof(lo<<ch);
#if INT64||LONG64 || __x86_64__ || __aarch64__
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC1-10 OK\n");
  else
    printf("M3GSIZ03 FCFNC1-10 NG\n");

  a = sizeof(sl>>sh);
#if INT64||LONG64 || __x86_64__ || __aarch64__
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC1-11 OK\n");
  else
    printf("M3GSIZ03 FCFNC1-11 NG\n");

  a = sizeof(ul&ss);
#if INT64||LONG64 || __x86_64__ || __aarch64__
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC1-12 OK\n");
  else
    printf("M3GSIZ03 FCFNC1-12 NG\n");

  a = sizeof(fl&&in);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC1-13 OK\n");
  else
    printf("M3GSIZ03 FCFNC1-13 NG\n");

  a = sizeof(db||sh);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC1-14 OK\n");
  else
    printf("M3GSIZ03 FCFNC1-14 NG\n");

  a = sizeof(ld*uc);
#if __NO_LONGDOUBLE
  if (a == 8)
#elif __R12 || __i386 
  if (a == 12)
#else
  if (a == 16)
#endif
    printf("M3GSIZ03 FCFNC1-15 OK\n");
  else
    printf("M3GSIZ03 FCFNC1-15 NG\n");

}
int 
fcfnc2 (void){
  static char           ch = 1;
  static signed char    sc = 1;
  static unsigned char  uc = 1;
  static int           in = 1, a, b;
  static signed int    si = 1;
  static unsigned int  ui = 1;
  static short int           sh = 1;
  static signed short int    ss = 1;
  static unsigned short int  us = 1;
  static long int           lo = 1;
  static signed long int    sl = 1;
  static unsigned long int  ul = 1;
  static float        fl = 1.0f;
  static double       db = 1.0 ;
  static long double  ld = 1.0l;

  a = sizeof(ch+4);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC2-1 OK\n");
  else
    printf("M3GSIZ03 FCFNC2-1 NG\n");

  a = sizeof(sc-1);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC2-2 OK\n");
  else
    printf("M3GSIZ03 FCFNC2-2 NG\n");

  a = sizeof(uc*2);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC2-3 OK\n");
  else
    printf("M3GSIZ03 FCFNC2-3 NG\n");

  a = sizeof(in*1.0f);
  if (a == 4)
    printf("M3GSIZ03 FCFNC2-4 OK\n");
  else
    printf("M3GSIZ03 FCFNC2-4 NG\n");

  a = sizeof(si/1.0);
  if (a == 8)
    printf("M3GSIZ03 FCFNC2-5 OK\n");
  else
    printf("M3GSIZ03 FCFNC2-5 NG\n");

  a = sizeof(21%ul);
#if INT64||LONG64 || __x86_64__ || __aarch64__
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC2-6 OK\n");
  else
    printf("M3GSIZ03 FCFNC2-6 NG\n");

  a = sizeof(1.0>in);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC2-7 OK\n");
  else
    printf("M3GSIZ03 FCFNC2-7 NG\n");

  a = sizeof(ss<2.5);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC2-8 OK\n");
  else
    printf("M3GSIZ03 FCFNC2-8 NG\n");

  a = sizeof(us-10);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC2-9 OK\n");
  else
    printf("M3GSIZ03 FCFNC2-9 NG\n");

  a = sizeof(lo<<1);
#if INT64||LONG64 || __x86_64__ || __aarch64__
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC2-10 OK\n");
  else
    printf("M3GSIZ03 FCFNC2-10 NG\n");

  a = sizeof(sl>>2);
#if INT64||LONG64 || __x86_64__ || __aarch64__
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC2-11 OK\n");
  else
    printf("M3GSIZ03 FCFNC2-11 NG\n");

  a = sizeof(15&ss);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC2-12 OK\n");
  else
    printf("M3GSIZ03 FCFNC2-12 NG\n");

  a = sizeof(2.0f&&in);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC2-13 OK\n");
  else
    printf("M3GSIZ03 FCFNC2-13 NG\n");

  a = sizeof(db||1.0l);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("M3GSIZ03 FCFNC2-14 OK\n");
  else
    printf("M3GSIZ03 FCFNC2-14 NG\n");

  a = sizeof(ld*1.0f);
#if __NO_LONGDOUBLE
  if (a == 8)
#elif __R12 || __i386
  if (a == 12)
#else
  if (a == 16)
#endif
    printf("M3GSIZ03 FCFNC2-15 OK\n");
  else
    printf("M3GSIZ03 FCFNC2-15 NG\n");

}





   struct  mp1st1 {
      int  st_a;
      int  st_b;
      int  st_c;
      struct mp1st1 *mp1st_nxt;
   };
   int  mp1vt(struct mp1st1 *,char);
   int  mp1ut(struct mp1st1 *);
   int  mp1ht(struct mp1st1 *);
   void mp1errpr(int);

int 
mptest07 (void)
 {
    struct  mp1st1 st[10], *stp;
    int          i,totlv,totlva,totlvb,totlvc,totlu,totlh;

    printf("\n***** MPTEST07  START *****\n");
    for( i=0 ; i<10 ; i++ ){
       st[i].st_a = i;
       st[i].st_b = i+10;
       st[i].st_c = i*i;
       if(i==9)
         st[i].mp1st_nxt = 0;
       else
         st[i].mp1st_nxt = &st[i+1];
    }
    stp = st;
    totlva = mp1vt(stp,'a');
    totlvb = mp1vt(stp,'b');
    totlvc = mp1vt(stp,'c');
    totlv  = totlva + totlvb + totlvc;
    totlu = 0;
    for( i=0 ; i<10 ; i++)
        totlu =totlu + mp1ut(&st[i]);
    totlh = mp1ht(st);

    if((totlv == totlu) && (totlu == totlh)){
       printf("     TOTLV = %d \n",totlv);
       printf("          TOTLVA = %d \n",totlva);
       printf("          TOTLVB = %d \n",totlvb);
       printf("          TOTLVC = %d \n",totlvc);
       printf("     TOTLU = %d \n",totlu);
       printf("     TOTLH = %d \n",totlh);
       printf("***** MPTEST07  OK *****\n");
    } else {
       printf("   ** NG! NG! NG! **\n");
       printf("     TOTLV = %d \n",totlv);
       printf("          TOTLVA = %d \n",totlva);
       printf("          TOTLVB = %d \n",totlvb);
       printf("          TOTLVC = %d \n",totlvc);
       printf("     TOTLU = %d \n",totlu);
       printf("     TOTLH = %d \n",totlh);
       printf("***** MPTEST07  NG *****\n");
    }
}

  int mp1vt(struct mp1st1 *ptr,char c)
 {
    int h;

     if(ptr == 0) mp1errpr(1);
     switch(c){
       case 'a':
         for( h = 0 ; ptr != 0 ; ptr = ptr->mp1st_nxt )
            h = h + ptr->st_a;
         return(h);
       case 'b':
         for( h = 0 ; ptr != 0 ; ptr = ptr->mp1st_nxt )
            h = h + ptr->st_b;
         return(h);
       case 'c':
         for( h = 0 ; ptr != 0 ; ptr = ptr->mp1st_nxt )
            h = h + ptr->st_c;
         return(h);
       default:
         mp1errpr(2);
     }
 }

 int 
mp1ut (struct mp1st1 *st)
{
    int total;

       if(st == 0) mp1errpr(3);
       total = st->st_a + st->st_b + st->st_c;
       return(total);
}

 int 
mp1ht (struct mp1st1 *st)
{
   int total,wt;
   struct mp1st1 *pp;

   if(st == 0) mp1errpr(4);
   total = 0;
   for(pp=st ; pp != 0 ; pp = pp->mp1st_nxt){
      wt = pp->st_a + pp->st_b + pp->st_c;
      total = total + wt;
   }
   return(total);
}

 void 
mp1errpr (int cd)
 {
      switch(cd){
        case 1:
        case 2:
          printf("  *** NG  IN 'mp1vt'''\n");
          break;
        case 3:
          printf("  *** NG  IN 'mp1ut'''\n");
          break;
        case 4:
          printf("  *** NG  IN 'mp1ht'''\n");
          break;
        default:
          cd = -1;
      }
      printf("***** MPTEST07 NG ***** code = %d",cd);
      exit(0);
 }




  int *mp1fnc2(),mp1fnc4();
int  mp1fnc4(a)
      int *a ;
proc
      *a=1 ;
endproc
  void mp1fnc1(),mp1fnc3(),mp1fnc5();
  int mptest41()
  {
       mp1fnc1();
       mp1fnc3();
       mp1fnc5();
  }
  void 
mp1fnc1 (void)
  {
       static int *(*eee)()=mp1fnc2;
       if(*(*eee)() == 10)
        printf("*** MPTEST41 CHECK01 OK ***\n");
       else
        printf("*** MPTEST41 CHECK01 NG ***\n");
  }
  int *
mp1fnc2 (void)
  {
       static int ooo=0;
       ooo=ooo+10;
       return(&ooo);
  }
  void 
mp1fnc3 (void)
  {
       int    ccc;
       static int aaa=20,(*bbb)()=mp1fnc4;
       static int *ddd=&aaa;
       *ddd=*ddd+30;
       if(*ddd==50)
        printf("*** MPTEST41 CHECK02 OK ***\n");
       else
        printf("*** MPTEST41 CHECK02 NG ***\n");
       ccc=(*bbb)(&ccc);
  }
  void 
mp1fnc5 (void)
  {
       void   mp1fnc6();
       static int b=20,*e;
       e=&b;
       mp1fnc6(e);
  }
  void 
mp1fnc6 (
    int *a
)
  {
       int    c=5;
       c=c+*a;
       if(c==25)
        printf("*** MPTEST41 CHECK3 OK ***\n");
       else
        printf("*** MPTEST41 CHECK3 NG ***\n");
  }






int m3mprd06 (void)
{ struct t3 {
   int t3a;
   int t3aa[30];
   };
   struct t3 st,*stp;
   int a,b,c,*p;
   stp=0;
   a=b=c=0;
   p=0;
   stp=&st;
   p=&st.t3aa[0];
   *p=10;
   a=st.t3aa[0];
   p=&(stp->t3aa[0]);
   p+=5;
   *p=20;
   mp1fnc(&c);
   b=stp->t3aa[c];
   st.t3aa[1]=40;
   stp->t3aa[c]=b;
   if(a==10 && b==20)
        printf("M3MPRD06 OK\n");
   else printf("M3MPRD06 NG A=%d B=%d\n",a,b);
}
int mp1fnc(j)
int *j;
{
*j=5;
return 0;
}



int 
scrna08 (void)
{

    printf(" ALL BIT TEST OK\n");
}



#define l 0
#define h 1

struct _nd2 {
  char y,y__;
};

struct _rsff {
  char q,q__;
  char q_,q___;
  struct _nd2 g1;
  struct _nd2 g2;
};

struct _rsff rsff_d;
int now;

void scrsk17();
int rsff_c (struct _rsff *_p, char q, char q_);
int nd2_c (struct _nd2 *_p, char y);
void nd2_f (struct _nd2 *_p, char a, char b);
void rsff_f (struct _rsff *_p, char s_, char r_);

int 
_scanf (char *p, char *a, char *b)
{
   static int count=0;
   static struct tag {
     int i;
     int j;
   } data[] = {  { 0,0 },
                     { 0,1 },
                     { 1,0 },
                     { 1,1 },
                     { -1,0 } };
   if( data[count].i == -1 ) {
     return (EOF);
   }
   *a = data[count].i;
   *b = data[count].j;
   count++;
   return !EOF;
}
void 
scrsk17 (void)
{
   char s_, r_;
   now = 0;
   while( _scanf("%d %d2",&s_,&r_) != EOF ) {
     rsff_f(&rsff_d,s_,r_);
{
   static int ans[] = {
       0,  0,  1,  1,
       0,  1,  1,  0,
       1,  0,  0,  1,
       1,  1,  0,  1
   };
   static int c=0;
   if( s_ != ans[c++] ) puts(" NG ");
   if( r_ != ans[c++] ) puts(" NG ");
   if( rsff_d.q != ans[c++] ) puts(" NG ");
   if( rsff_d.q_ != ans[c++] ) puts(" NG ");
}
     now++;
   }
   puts("\nSCRSK17 OK");
}

void 
rsff_f (struct _rsff *_p, char s_, char r_)
{
  if( ! now ) {
    _p -> q__ = h;
    _p -> q___ = h;
  }
  do {
    nd2_f(&_p -> g1, s_, *(char *)&_p -> g2 );
    nd2_f(&_p -> g2, r_, *(char *)&_p -> g1 );
    _p -> q = *(char *)&_p -> g1;
    _p -> q_ = *(char *)&_p -> g2;
  } while( rsff_c ( _p, _p -> q, _p -> q_ ));
}

int 
rsff_c (struct _rsff *_p, char q, char q_)
{
  int __f = 0;
  if( _p -> q__ != q ) {
    _p -> q__ = q; __f = 1;
  }
  if( _p -> q___ != q_ ) {
    _p -> q___ = q_; __f = 1;
  }
  return (__f);
}

void 
nd2_f (struct _nd2 *_p, char a, char b)
{
  if( !now ) {
    _p -> y__ = h;
  }
  do {
    _p -> y = ~(a & b) & 1;
  } while( nd2_c (_p,_p->y));
}

int 
nd2_c (struct _nd2 *_p, char y)
{
  int __f = 0;
  if( _p -> y__ != y ) {
    _p -> y__ = y;
    __f  = 1;
  }
  return (__f);
}

