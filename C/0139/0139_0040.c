#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int u_check();
int rt_rget(int r_no);
int set_prg();
int init_reg();
int BANW(int i);
int BALST(int j);
int BANXT(int j);
int barst();
int f1();
int f();
int fxfnc11();
int fxfnc10();
int fxfnc9();
int fxfnc8();
int fxfnc7();
int fxfnc6();
int fxfnc5();
int fxfnc4();
int fxfnc3();
int fxfnc2();
int fxfnc1();
int fafnc4();
int fafnc3();
int fafnc2();
int fafnc1();
int m3grel05();
int scrpz16();
int mptest21();
int scrna19();
int m3gswh12();
int m3glor02();
int mptest22();
int m3grtn05();
  
 
 
 
 
 
 
 

int main()
{

   printf("*** \n\n");

   m3grtn05();   
   mptest22();   
   m3glor02();   
   m3gswh12();   
   scrna19() ;   
   mptest21();   
   scrpz16() ;   
   m3grel05();   

   printf("\n*** \n");

exit (0);
   }



 
 
 


     struct f1tg {
                int   si1;
                int   si2;
                int   si3;
                int   si4;
       unsigned int   ui1;
       unsigned int   ui2;
       unsigned int   ui3;
       unsigned int   ui4;
                long  sl1;
                long  sl2;
                long  sl3;
                long  sl4;
       unsigned long  ul1;
       unsigned long  ul2;
       unsigned long  ul3;
       unsigned long  ul4;
    } f1st1,*f1st2=&f1st1;

     int  f1i=0;

int m3grtn05()  {

     int  a1,a2,a3,a4,b1,b2,b3,b4;
     int  c1,c2,c3,c4,d1,d2,d3,d4;

              char   f1f1(),f1f2(),f1f3(),f1f4();
     unsigned char   f1f5(),f1f6(),f1f7(),f1f8();
              short  f1f9(),f1f10(),f1f11(),f1f12();
     unsigned short  f1f13(),f1f14(),f1f15(),f1f16();

    f1st2->si1=1,f1st2->si2=2,f1st2->si3=3,f1st2->si4=4;
    f1st2->ui1=1,f1st2->ui2=2,f1st2->ui3=3,f1st2->ui4=4;
    f1st2->sl1=1,f1st2->sl2=2,f1st2->sl3=3,f1st2->sl4=4;
    f1st2->ul1=1,f1st2->ul2=2,f1st2->ul3=3,f1st2->ul4=4;

  printf("M3GRTN05 TEST-START \n");

     a1=f1f1();
     if(a1==1)
        printf("M3GRTN05 1-1 TEST -O  K- \n");
     else
        printf("M3GRTN05 1-1 TEST - NG - \n");

     a2=f1f2();
     if(a2==1)
        printf("M3GRTN05 1-2 TEST -O  K- \n");
     else
        printf("M3GRTN05 1-2 TEST - NG - \n");

     a3=f1f3();
     if(a3==1)
        printf("M3GRTN05 1-3 TEST -O  K- \n");
     else
        printf("M3GRTN05 1-3 TEST - NG - \n");

     a4=f1f4();
     if(a4==1)
        printf("M3GRTN05 1-4 TEST -O  K- \n");
     else
        printf("M3GRTN05 1-4 TEST - NG - \n");

     b1=f1f5();
     if(b1==2)
        printf("M3GRTN05 2-1 TEST -O  K- \n");
     else
        printf("M3GRTN05 2-1 TEST - NG - \n");

     b2=f1f6();
     if(b2==2)
        printf("M3GRTN05 2-2 TEST -O  K- \n");
     else
        printf("M3GRTN05 2-2 TEST - NG - \n");

     b3=f1f7();
     if(b3==2)
        printf("M3GRTN05 2-3 TEST -O  K- \n");
     else
        printf("M3GRTN05 2-3 TEST - NG - \n");

     b4=f1f8();
     if(b4==2)
        printf("M3GRTN05 2-4 TEST -O  K- \n");
     else
        printf("M3GRTN05 2-4 TEST - NG - \n");

     c1=f1f9();
     if(c1==3)
        printf("M3GRTN05 3-1 TEST -O  K- \n");
     else
        printf("M3GRTN05 3-1 TEST - NG - \n");

     c2=f1f10();
     if(c2==3)
        printf("M3GRTN05 3-2 TEST -O  K- \n");
     else
        printf("M3GRTN05 3-2 TEST - NG - \n");

     c3=f1f11();
     if(c3==3)
        printf("M3GRTN05 3-3 TEST -O  K- \n");
     else
        printf("M3GRTN05 3-3 TEST - NG - \n");

     c4=f1f12();
     if(c4==3)
        printf("M3GRTN05 3-4 TEST -O  K- \n");
     else
        printf("M3GRTN05 3-4 TEST - NG - \n");

     d1=f1f13();
     if(d1==4)
        printf("M3GRTN05 4-1 TEST -O  K- \n");
     else
        printf("M3GRTN05 4-1 TEST - NG - \n");

     d2=f1f14();
     if(d2==4)
        printf("M3GRTN05 4-2 TEST -O  K- \n");
     else
        printf("M3GRTN05 4-2 TEST - NG - \n");

     d3=f1f15();
     if(d3==4)
        printf("M3GRTN05 4-3 TEST -O  K- \n");
     else
        printf("M3GRTN05 4-3 TEST - NG - \n");

     d4=f1f16();
     if(d4==4)
        printf("M3GRTN05 4-4 TEST -O  K- \n");
     else
        printf("M3GRTN05 4-4 TEST - NG - \n");

  printf("M3GRTN05 TEST-END \n");
}

  char  f1f1() {
        return((f1st2+f1i)->si1);
  }

  char  f1f2() {
        return((f1st2+f1i)->ui1);
  }

  char  f1f3() {
        return((f1st2+f1i)->sl1);
  }

  char  f1f4() {
        return((f1st2+f1i)->ul1);
  }

  unsigned char  f1f5() {
        return((f1st2+f1i)->si2);
  }

  unsigned char  f1f6() {
        return((f1st2+f1i)->ui2);
  }

  unsigned char  f1f7() {
        return((f1st2+f1i)->sl2);
  }

  unsigned char  f1f8() {
        return((f1st2+f1i)->ul2);
  }

  short  f1f9() {
        return((f1st2+f1i)->si3);
  }

  short  f1f10() {
        return((f1st2+f1i)->ui3);
  }

  short  f1f11() {
        return((f1st2+f1i)->sl3);
  }

  short  f1f12() {
        return((f1st2+f1i)->ul3);
  }

  unsigned short  f1f13() {
        return((f1st2+f1i)->si4);
  }

  unsigned short  f1f14() {
        return((f1st2+f1i)->ui4);
  }

  unsigned short  f1f15() {
        return((f1st2+f1i)->sl4);
  }

  unsigned short  f1f16() {
        return((f1st2+f1i)->ul4);
  }


 
 
 


int m3grel05()
{
  printf("M3GREL05 START\n");
  fafnc1();
  fafnc2();
  fafnc3();
  fafnc4();
  printf("M3GREL05 END  \n");
}
 
int fafnc1(){
  float fa[1],fb[1];
  int a=0;
  fa[0]=0.0;fb[0]=1.0;
  a =(fa[0]==fb[0])+(0.0==fa[0])+(fa[0]==0.0)+(0.0==0.0);
  if (a==3)
    printf("M3GREL05 FAFNC1 OK\n");
  else {
    printf("M3GREL05 FAFNC1 NG\n");
    printf("A=%d\n",a);
  }
}
 
int fafnc2(){
  volatile int a[3] ,*ap1,*ap2;
           int b[3] ,*bp1,*bp2;
  struct tag { int a;} st;
  struct tag * sta,*stb;
  int x=0;
  sta=&st; stb=&st;
  ap1=a;
  ap2=a+1;
  bp1=b;
  bp2=b+1;

  x =(ap1==ap2)+(bp1==bp2)+(sta==stb);
  if (x==1)
    printf("M3GREL05 FAFNC2 OK\n");
  else {
    printf("M3GREL05 FAFNC2 NG\n");
    printf("X=%d\n",x);
  }
}
 
int fafnc3(){
  const int a[2];
  const int*ap;
  const void *vpq=0x0;
        void *vp=0x0 ;
  int  x=0;
  ap=a;
  x=(ap==vpq)+(ap==vp);
  if (x==0)
    printf("M3GREL05 FAFNC3 OK\n");
  else {
    printf("M3GREL05 FAFNC3 NG\n");
    printf("X=%d\n",x);
  }
}
 
int fafnc4(){
  int a[2];
  int*ap;
  const void *vpq=0x0;
        void *vp=0x0 ;
  int  x=0;
  ap=a;
  x=(ap==vpq)+(ap==vp);
  if (x==0)
    printf("M3GREL05 FAFNC4 OK\n");
  else {
    printf("M3GREL05 FAFNC4 NG\n");
    printf("X=%d\n",x);
  }
}
 
volatile int aa[2];
int fafnc5(){
  volatile void *vpq;
        void *vp;
  volatile int *ap;
  int x=0;

  ap=aa;
  vpq=(void *)ap;
  vp =(void *)ap;
  {
    extern volatile int aa[2];
  }
  x =(ap==vpq)+(ap==vp);
  if (x==2)
    printf("M3GREL05 FAFNC5 OK\n");
  else {
    printf("M3GREL05 FAFNC5 NG\n");
    printf("X=%d\n",x);
  }
}
 
int b[2];
int fafnc6(){
  const void *vpq;
        void *vp;
  int *ap;
  int x=0;

  ap=b;
  vpq=(void *)ap;
  vp =(void *)ap;
  {
    extern int b[2];
  }
  x =(ap==vpq)+(ap==vp);
  if (x==2)
    printf("M3GREL05 FAFNC6 OK\n");
  else {
    printf("M3GREL05 FAFNC6 NG\n");
    printf("X=%d\n",x);
  }
}
 
int fafnc7(){
  int *ap1,*ap2;
  int a[1];
  int x=0;
  struct tag {int a;}st;
  struct tag *stp;
  stp=&st;
  ap1=a;
  ap2=&x;

  x =(ap1==(1-1))+(ap2==0)+((-1+1)==stp);
  if (x==0)
    printf("M3GREL05 FAFNC7 OK\n");
  else {
    printf("M3GREL05 FAFNC7 NG\n");
    printf("X=%d\n",x);
  }
}

 
 
 



int m3gswh12()  {

            long int  l1=1;
            long int  l2=3;
            long int  l3=5;
            long int  l4=10;
            long int  l5=100;
            long int  l6=10000;
            long int  l7=-2147483648;
            long int  l8=2147483647;
   unsigned long int  ul1=1;
   unsigned long int  ul2=2;
   unsigned long int  ul3=3;
   unsigned long int  ul4=5;
   unsigned long int  ul5=10;
   unsigned long int  ul6=100;
   unsigned long int  ul7=10000;
   unsigned long int  ul8=4294967295;

   int a1,a2,a3,a4,a5,a6,a7,a8;
   int b1,b2,b3,b4,b5,b6,b7,b8;

  printf("M3GSWH12 TEST-START \n");

   switch(l1)  {
     case (char)1:
       a1=1;
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
  if(a1==1)
    printf("M3GSWH12 1-1 TEST -O  K- \n");
  else
    printf("M3GSWH12 1-1 TEST - NG - \n");

   switch(l2)  {
     case (unsigned char)5:
       a2=5;
       break;
     case (unsigned char)10:
     case (unsigned char)100:
       a2=10;
       break;
     case (unsigned char)128:
       a2=20;
     default:
       a2=0;
  }
  if(a2==0)
    printf("M3GSWH12 1-2 TEST -O  K- \n");
  else
    printf("M3GSWH12 1-2 TEST - NG - \n");

   switch(l3)  {
     case (short)10:
       a3=5;
       break;
     case (short)5:
     case (short)100:
       a3=10;
       break;
     case (short)128:
       a3=20;
     default:
       a3=0;
  }
  if(a3==10)
    printf("M3GSWH12 1-3 TEST -O  K- \n");
  else
    printf("M3GSWH12 1-3 TEST - NG - \n");

   switch(l4)  {
     case (unsigned short)5:
       a4=5;
       break;
     case (unsigned short)10:
     case (unsigned short)100:
       a4=10;
       break;
     case (unsigned short)128:
       a4=20;
     default:
       a4=0;
  }
  if(a4==10)
    printf("M3GSWH12 1-4 TEST -O  K- \n");
  else
    printf("M3GSWH12 1-4 TEST - NG - \n");

   switch(l5)  {
     case 5:
       a5=5;
       break;
     case 10:
     case 100:
       a5=10;
       break;
     case 128:
       a5=20;
     default:
       a5=0;
  }
  if(a5==10)
    printf("M3GSWH12 1-5 TEST -O  K- \n");
  else
    printf("M3GSWH12 1-5 TEST - NG - \n");

   switch(l6)  {
     case (unsigned int)5:
       a6=5;
       break;
     case (unsigned int)10:
     case (unsigned int)100:
       a6=10;
       break;
     case (unsigned int)10000:
       a6=20;
     default:
       a6=0;
  }
  if(a6==0)
    printf("M3GSWH12 1-6 TEST -O  K- \n");
  else
    printf("M3GSWH12 1-6 TEST - NG - \n");

   switch(l7)  {
     case (long int)-2147483648:
       a7=1;
       break;
     case (long int)10:
     case (long int)100:
       a7=10;
       break;
     case (long int)32767:
       a7=20;
     default:
       a7=0;
  }
  if(a7==1)
    printf("M3GSWH12 1-7 TEST -O  K- \n");
  else
    printf("M3GSWH12 1-7 TEST - NG - \n");

   switch(l8)  {
     case (unsigned long int)5:
       a8=5;
       break;
     case (unsigned long int)10:
     case (unsigned long int)100:
       a8=10;
       break;
     case (unsigned long int)128:
       a8=20;
     default:
       a8=0;
  }
  if(a8==0)
    printf("M3GSWH12 1-8 TEST -O  K- \n");
  else
    printf("M3GSWH12 1-8 TEST - NG - \n");

   switch(ul1)  {
     case (char)1:
       b1=1;
       break;
     case (char)10:
     case (char)100:
       b1=10;
       break;
     case (char)128:
       b1=20;
     default:
       b1=0;
  }
  if(b1==1)
    printf("M3GSWH12 2-1 TEST -O  K- \n");
  else
    printf("M3GSWH12 2-1 TEST - NG - \n");

   switch(ul2)  {
     case (unsigned char)5:
       b2=5;
       break;
     case (unsigned char)10:
     case (unsigned char)100:
       b2=10;
       break;
     case (unsigned char)128:
       b2=20;
     default:
       b2=0;
  }
  if(b2==0)
    printf("M3GSWH12 2-2 TEST -O  K- \n");
  else
    printf("M3GSWH12 2-2 TEST - NG - \n");

   switch(ul3)  {
     case (short)5:
       b3=5;
       break;
     case (short)3:
     case (short)10:
       b3=10;
       break;
     case (short)20:
       b3=20;
     default:
       b3=0;
  }
  if(b3==10)
    printf("M3GSWH12 2-3 TEST -O  K- \n");
  else
    printf("M3GSWH12 2-3 TEST - NG - \n");

   switch(ul4)  {
     case (unsigned short)5:
       b4=5;
       break;
     case (unsigned short)10:
     case (unsigned short)100:
       b4=10;
       break;
     case (unsigned short)128:
       b4=20;
     default:
       b4=0;
  }
  if(b4==5)
    printf("M3GSWH12 2-4 TEST -O  K- \n");
  else
    printf("M3GSWH12 2-4 TEST - NG - \n");

   switch(ul5)  {
     case 5:
       b5=5;
       break;
     case 10:
     case 100:
       b5=10;
       break;
     case 128:
       b5=20;
     default:
       b5=0;
  }
  if(b5==10)
    printf("M3GSWH12 2-5 TEST -O  K- \n");
  else
    printf("M3GSWH12 2-5 TEST - NG - \n");

   switch(ul6)  {
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
  if(b6==0)
    printf("M3GSWH12 2-6 TEST -O  K- \n");
  else
    printf("M3GSWH12 2-6 TEST - NG - \n");

   switch(ul7)  {
     case (long int)5:
       b7=5;
       break;
     case (long int)10:
     case (long int)100:
       b7=10;
       break;
     case (long int)10000:
       b7=20;
     default:
       b7=0;
  }
  if(b7==0)
    printf("M3GSWH12 2-7 TEST -O  K- \n");
  else
    printf("M3GSWH12 2-7 TEST - NG - \n");

   switch(ul8)  {
     case (unsigned long int)5:
       b8=5;
       break;
     case (unsigned long int)10:
     case (unsigned long int)4294967295:
       b8=10;
       break;
     case (unsigned long int)128:
       b8=20;
     default:
       b8=0;
  }
  if(b8==10)
    printf("M3GSWH12 2-8 TEST -O  K- \n");
  else
    printf("M3GSWH12 2-8 TEST - NG - \n");

  printf("M3GSWH12 TEST-END \n");

}

 
 
 


int m3glor02()
{
  printf("M3GLOR02 START\n");
  fxfnc1();
  fxfnc2();
  fxfnc3();
  fxfnc4();
  fxfnc5();
  fxfnc6();
  fxfnc7();
  fxfnc8();
  fxfnc9();
  fxfnc10();
  fxfnc11();
  printf("M3GLOR02 END  \n");
}
 
 
 int fxfnc1(){
  static int    a, i = 0;
  static short int s = 1;
  static char      c = 2;
  static unsigned int       ui = 3;
  static unsigned short int us = 4;
  static unsigned char      uc = 5;

  a = ((i||c)&&(i||c));
  if (a == 1)
    printf("M3GLOR02 FXFNC1-1 OK\n");
  else
    printf("M3GLOR02 FXFNC1-1 NG\n");

  a = (((s-s)||(s+s))&&((ui*ui-9)||(uc/uc)));
  if (a == 1)
    printf("M3GLOR02 FXFNC1-2 OK\n");
  else
    printf("M3GLOR02 FXFNC1-2 NG\n");
}
 
 
 int fxfnc2(){
  static int i=0,a;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
  static int *ip=&i;
  static short int *sp=&s;
  static char  *cp=&c;

  a = ((s&&s)&&(s&&c));
  if (a == 1)
    printf("M3GLOR02 FXFNC2-1 OK\n");
  else
    printf("M3GLOR02 FXFNC2-1 NG\n");

  a = (((i+s)&&(s*s))&&(us[1]&&uc[3]));
  if (a == 1)
    printf("M3GLOR02 FXFNC2-2 OK\n");
  else
    printf("M3GLOR02 FXFNC2-2 NG\n");
}
 
 
 int fxfnc3(){
  static int i=0,*ip=&i,a;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
  static struct tag{ int a;} st={1},*stp=&st;

  a = ((i||s)&&(c&&c));
  if (a == 1)
    printf("M3GLOR02 FXFNC3-1 OK\n");
  else
    printf("M3GLOR02 FXFNC3-1 NG\n");

  a = (((*ip)||(ui[0]))&&((s+s)&&((*stp).a)));
  if (a == 1)
    printf("M3GLOR02 FXFNC3-2 OK\n");
  else
    printf("M3GLOR02 FXFNC3-2 NG\n");

  a = (((f())||(c+3))&&(((*stp).a)&&(f()+1)));
  if (a == 1)
    printf("M3GLOR02 FXFNC3-3 OK\n");
  else
    printf("M3GLOR02 FXFNC3-3 NG\n");
}
 int f()
{
   return 0;
}
 
 
 int fxfnc4(){
  static int i=0,a;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};
  static union utag{ int a;
                      int b;
                   }uni;
  uni.a=1;

  a = (!(i)&&!(i));
  if (a == 1)
    printf("M3GLOR02 FXFNC4-1 OK\n");
  else
    printf("M3GLOR02 FXFNC4-1 NG\n");

  a = (!(uni.a-uni.a)&&!(ar[1]));
  if (a == 1)
    printf("M3GLOR02 FXFNC4-2 OK\n");
  else
    printf("M3GLOR02 FXFNC4-2 NG\n");
}
 
 
 int fxfnc5(){
  static int i=0,a;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};
  static union utag{ int a;
                      int b;
                   }uni;
  uni.a=1;

  a = ((ar[i+3])&&(bit.a));
  if (a == 1)
    printf("M3GLOR02 FXFNC5-1 OK\n");
  else
    printf("M3GLOR02 FXFNC5-1 NG\n");

  a = (f1()&&f1());
  if (a == 1)
    printf("M3GLOR02 FXFNC5-2 OK\n");
  else
    printf("M3GLOR02 FXFNC5-2 NG\n");

  a = ((bit.a*ar[2])&&(uni.a*bit.a));
  if (a == 1)
    printf("M3GLOR02 FXFNC5-3 OK\n");
  else
    printf("M3GLOR02 FXFNC5-3 NG\n");
}
 int f1()
{
  return 1;
}
 
 
 int fxfnc6(){
  static int i=0,a;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};

  a = ((0<s)&&(uc>ui));
  if (a == 1)
    printf("M3GLOR02 FXFNC6-1 OK\n");
  else
    printf("M3GLOR02 FXFNC6-1 NG\n");

  a = ((ar[2]>=i)&&(bit.a<=uc));
  if (a == 1)
    printf("M3GLOR02 FXFNC6-2 OK\n");
  else
    printf("M3GLOR02 FXFNC6-2 NG\n");

  a = ((bit.a!=bit.b)&&(bit.a==bit.a));
  if (a == 1)
    printf("M3GLOR02 FXFNC6-3 OK\n");
  else
    printf("M3GLOR02 FXFNC6-3 NG\n");
}
 
 
 int fxfnc7(){
  static int i=0,a;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};

  a = ((s||0)&&(ui<uc));
  if (a == 1)
    printf("M3GLOR02 FXFNC7-1 OK\n");
  else
    printf("M3GLOR02 FXFNC7-1 NG\n");

  a = (((c-c)||s)&&(bit.a>=s));
  if (a == 1)
    printf("M3GLOR02 FXFNC7-2 OK\n");
  else
    printf("M3GLOR02 FXFNC7-2 NG\n");

  a = ((ui*s||ar[0])&&(bit.a!=bit.b));
  if (a == 1)
    printf("M3GLOR02 FXFNC7-3 OK\n");
  else
    printf("M3GLOR02 FXFNC7-3 NG\n");

  a = ((ui*s||ar[0])&&(s*s+s));
  if (a == 1)
    printf("M3GLOR02 FXFNC7-4 OK\n");
  else
    printf("M3GLOR02 FXFNC7-4 NG\n");
}
 
 
 int fxfnc8(){
  static int i=0,a;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};

  a = ((uc>ui)&&(ui||ui));
  if (a == 1)
    printf("M3GLOR02 FXFNC8-1 OK\n");
  else
    printf("M3GLOR02 FXFNC8-1 NG\n");

  a = ((uc>=uc)&&(bit.a||s));
  if (a == 1)
    printf("M3GLOR02 FXFNC8-2 OK\n");
  else
    printf("M3GLOR02 FXFNC8-2 NG\n");

  a = ((ui*i!=ar[2])&&(bit.a||bit.b));
  if (a == 1)
    printf("M3GLOR02 FXFNC8-3 OK\n");
  else
    printf("M3GLOR02 FXFNC8-3 NG\n");

  a = (((int)(ui*ar[2]))&&(bit.a||bit.b));
  if (a == 1)
    printf("M3GLOR02 FXFNC8-4 OK\n");
  else
    printf("M3GLOR02 FXFNC8-4 NG\n");
}
 
 
 int fxfnc9(){
  static int i=0,a;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};

  a = ((s&&c)&&(ui<uc));
  if (a == 1)
    printf("M3GLOR02 FXFNC9-1 OK\n");
  else
    printf("M3GLOR02 FXFNC9-1 NG\n");

  a = (((c+c)&&s)&&(bit.a>=s));
  if (a == 1)
    printf("M3GLOR02 FXFNC9-2 OK\n");
  else
    printf("M3GLOR02 FXFNC9-2 NG\n");

  a = ((ui&&ar[2])&&(bit.a!=bit.b));
  if (a == 1)
    printf("M3GLOR02 FXFNC9-3 OK\n");
  else
    printf("M3GLOR02 FXFNC9-3 NG\n");

  a = ((ui&&ar[2])&&(s*s+s));
  if (a == 1)
    printf("M3GLOR02 FXFNC9-4 OK\n");
  else
    printf("M3GLOR02 FXFNC9-4 NG\n");
}
 
 
 int fxfnc10(){
  static int i=0,a;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};

  a = ((uc>ui)&&(ui&&ui));
  if (a == 1)
    printf("M3GLOR02 FXFNC10-1 OK\n");
  else
    printf("M3GLOR02 FXFNC10-1 NG\n");

  a = ((uc>=uc)&&(bit.a&&s));
  if (a == 1)
    printf("M3GLOR02 FXFNC10-2 OK\n");
  else
    printf("M3GLOR02 FXFNC10-2 NG\n");

  a = ((ui!=ar[0])&&(bit.a&&(bit.b+1)));
  if (a == 1)
    printf("M3GLOR02 FXFNC10-3 OK\n");
  else
    printf("M3GLOR02 FXFNC10-3 NG\n");

  a = (((int)(ui*ar[2]))&&(bit.a&&bit.a));
  if (a == 1)
    printf("M3GLOR02 FXFNC10-4 OK\n");
  else
    printf("M3GLOR02 FXFNC10-4 NG\n");
}
 
 
 int fxfnc11(){
  static int i=0,a;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};

  a = (((i||i)||(s||i))&&((s&&s)&&(ui&&ui)));
  if (a == 1)
    printf("M3GLOR02 FXFNC11-1 OK\n");
  else
    printf("M3GLOR02 FXFNC11-1 NG\n");

  a = (((bit.a&&bit.b)||(uc&&s))&&((i||ar[2])&&(i||bit.a)));
  if (a == 1)
    printf("M3GLOR02 FXFNC11-2 OK\n");
  else
    printf("M3GLOR02 FXFNC11-2 NG\n");

  a = (((bit.a||bit.b)||(uc&&c))&&((i||ar[2])&&(c&&bit.a)));
  if (a == 1)
    printf("M3GLOR02 FXFNC11-3 OK\n");
  else
    printf("M3GLOR02 FXFNC11-3 NG\n");

  a = ((i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||s&&c)&&
      (i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||s&&c));
  if (a == 1)
    printf("M3GLOR02 FXFNC11-4 OK\n");
  else
    printf("M3GLOR02 FXFNC11-4 NG\n");
}


 
 
 


  void mp1fnc1(),mp1fnc3(),mp1fnc5();
  int *mp1fnc2(),mp1fnc4();
 int mptest21()
  {
       mp1fnc1();
       mp1fnc3();
       mp1fnc5();
  }
  void mp1fnc1()
  {
       static int *(*eee)()=mp1fnc2;
       if(*(*eee)() == 10)
        printf("*** MPTEST21 CHECK01 OK ***\n");
       else
        printf("*** MPTEST21 CHECK01 NG ***\n");
  }
  int  *mp1fnc2()
  {
       static int ooo=0;
       ooo=ooo+10;
       return(&ooo);
  }
  void mp1fnc3()
  {
       int    ccc;
       static int aaa=20,(*bbb)()=mp1fnc4;
       static int *ddd=&aaa;
       *ddd=*ddd+30;
       if(*ddd==50)
        printf("*** MPTEST21 CHECK02 OK ***\n");
       else
        printf("*** MPTEST21 CHECK02 NG ***\n");
       ccc=(*bbb)(&ccc);
  }
  void mp1fnc5()
  {
       void   mp1fnc6();
       static int b=20,*e;
       e=&b;
       mp1fnc6(e);
  }
  void mp1fnc6(a)
 int *a;
  {
       int    c=5;
       c=c+*a;
       if(c==25)
        printf("*** MPTEST21 CHECK03 OK ***\n");
       else
        printf("*** MPTEST21 CHECK03 NG ***\n");
  }
#define proc     {
#define endproc  }
 
int  mp1fnc4(a)
      int *a ;
proc
      *a=1 ;
endproc
 
 
 

   struct mp2s {
         int p;
         int ii;
   } mp2sss;
 int mptest22()
{
   int i,j;
   int xxfnc(int i);
   struct mp2s *ext;

   ext = &mp2sss;
   mp2sss.p=0;
   mp2sss.ii=1;
   i=xxfnc(ext->p);
   j=xxfnc(ext->ii);
   if(i-j != 1) printf("*** MPTEST22 NG *** i=%d,j=%d \n",i,j);
   else printf("*** MPTEST22 OK ***\n");
}
 int xxfnc(int i)
{
   if(i==0) return(1);
   if(i==1) return(0);
   return(-1);
}




 
 
 




#ifdef v10
 

#define bapr(format,value) printf("value = %format ",(value))
#define nl putchar('\n')
#define baprnt1(f,x1) bapr(f,x1); nl
#define baprnt2(f,x1,x2) bapr(f,x1); baprnt1(f,x2)
#define baprnt3(f,x1,x2,x3) bapr(f,x1); baprnt2(f,x2,x3)
#define baprnt4(f,x1,x2,x3,x4) bapr(f,x1); baprnt3(f,x2,x3,x4)

int i=1;
scrpz16()
{
      auto int i,j;
      i = barst();
      for(j=1;j<=3;j++) {
           baprnt2(d,i,j);
           baprnt1(d,banxt(i));
           baprnt1(d,balst(i));
           baprnt1(d,banw(i+j));
      }
}
int barst()
{
      return(i);
}
int banxt(j)
int j;
{
      return(j=i++);
}
int balst(j)
int j;
{
      static int i=10;
      return( j=i-- );
}
int banw(int i)
{
      auto int j=10;
      return( i=j+=i );
}
#else
  
 

 int basb(j)
int j;
{
     static int i=0;
     static int data[] = { 1,1,1,10,12,1,2,2,9,13,1,3,3,8,14 };
     if( j != data[i++]  ) {
       printf(" NG %d %d ",j,data[i-1]);
       exit(1);
     }
}
#define bapr(format,value) \
 { int b; printf(#value" = %"#format" ",b=(value)); basb(b); }
#define nl printf("\n")
#define baprnt1(f,x1) bapr(f,x1); nl
#define baprnt2(f,x1,x2) bapr(f,x1); baprnt1(f,x2)
#define baprnt3(f,x1,x2,x3) bapr(f,x1); baprnt2(f,x2,x3)
#define baprnt4(f,x1,x2,x3,x4) bapr(f,x1); baprnt3(f,x2,x3,x4)

int i=1;
 int scrpz16()
{
      auto int i,j;
      i = barst();
      for(j=1;j<=3;j++) {
           baprnt2(d,i,j);
           baprnt1(d,BANXT(i));
           baprnt1(d,BALST(i));
           baprnt1(d,BANW(i+j));
      }
      puts(" SCRPZ16 PASS \n");
}
int barst()
{
      return(i);
}
int BANXT(int j)
{
      return(j=i++);
}
int BALST(int j)
{
      static int i=10;
      return( j=i-- );
}
int BANW(int i)
{
      auto int j=10;
      return( i=j+=i );
}
#endif


 
 
 


#define   max_reg    20
#define   pro_reg    12
#define   bad_reg    13
#define   wreg_no    8

struct zrm_attr{
     unsigned char        no_slct  :1;
     unsigned char        no_regst :1;
     unsigned char        attr_lc  :1;
     unsigned char        attr_gr  :1;
     unsigned char        attr_tr  :1;
     unsigned char        attr_pr  :1;
     unsigned char        attr_bs  :1;
     unsigned char        attr_rv  :1;
};
struct zrm_utype{
     struct   zrm_attr    reg_attr;
     long     int         reg_tbnum;
     unsigned long int    reg_tbptr;
     unsigned long int    reg_defnm;
};
struct zrm_type{
     char        used;
     unsigned short int   max_lreg;
     unsigned short int   min_lreg;
     unsigned short int   max_greg;
     unsigned short int   min_greg;
     struct   zrm_utype   ureg[20];
} r_type;
int init_atr(struct zrm_utype *ptr);
 int scrna19()
{
     struct zrm_type     *zrmptr;
     int    i,j,k,l;
     int    reg_no;

     zrmptr=&r_type;
     reg_no = wreg_no;

     init_reg();
     set_prg();
     rt_rget(reg_no);
     if((reg_no = u_check()) == wreg_no)
           printf(" ==== TEST(SCRNA19) OK ======\n");
     else
           printf(" ==== TEST(SCRNA19) NG ======\n");
}
 int init_reg()
{
     struct zrm_type     *zrmptr;
     struct zrm_utype    *zr_uptr;
     int    i;

     zrmptr=&r_type;
     for(i=0; i < max_reg ;i++){
          zr_uptr=&(zrmptr->ureg[i]);
          zr_uptr->reg_tbnum = 0;
          zr_uptr->reg_tbptr = 0;
          zr_uptr->reg_defnm = 0;
          init_atr(zr_uptr);
     }
}
int init_atr(struct zrm_utype *ptr)
{
     struct zrm_attr     *attrptr;
     int    i,j;

     attrptr = &(ptr->reg_attr);
     attrptr->no_slct  = 0;
     attrptr->no_regst = 0;
     attrptr->attr_lc  = 0;
     attrptr->attr_gr  = 0;
     attrptr->attr_tr  = 0;
     attrptr->attr_pr  = 0;
     attrptr->attr_bs  = 0;
}
 int set_prg()
{
     struct zrm_type     *zrmptr;
     struct zrm_utype    *zr_uptr;
     struct zrm_attr     *attrptr;
     int    reg_no;

 
     reg_no = pro_reg;
     zrmptr=&r_type;
     zr_uptr=&(zrmptr->ureg[reg_no]);
     attrptr = &(zr_uptr->reg_attr);
     attrptr->no_slct = 1;
     attrptr->attr_pr = 1;

 
     reg_no = bad_reg;
     zr_uptr=&(zrmptr->ureg[reg_no]);
     attrptr = &(zr_uptr->reg_attr);
     attrptr->no_slct = 1;
     attrptr->attr_bs = 1;
 }
int rt_rget(int r_no)
 {
     struct zrm_type     *zrmptr;
     struct zrm_utype    *zr_uptr;
     struct zrm_attr     *attrptr;

     zrmptr=&r_type;
     zrmptr->max_lreg = r_no;
     zrmptr->min_greg = r_no+1;
     zr_uptr=&(zrmptr->ureg[r_no]);
     zr_uptr->reg_tbnum = 1000;
     zr_uptr->reg_tbptr = 1000;
     zr_uptr->reg_defnm = 10;
     attrptr = &(zr_uptr->reg_attr);
     attrptr->no_slct = 1;
     attrptr->attr_lc = 1;
     attrptr->no_regst= 1;
}
int u_check()
{
    struct zrm_type     *zrmptr;
    struct zrm_utype    *zr_uptr;
    struct zrm_attr     *attrptr;
    int reg;
    zrmptr=&r_type;
    for(reg = zrmptr->min_lreg; reg <= zrmptr->max_lreg; reg++)
    {
        zr_uptr = &(zrmptr->ureg[reg]);
        attrptr = &(zr_uptr->reg_attr);
        if(attrptr->attr_lc == 1 && attrptr->no_slct == 1)
                return(reg);
    }
}
