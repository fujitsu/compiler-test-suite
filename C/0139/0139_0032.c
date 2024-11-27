#include <stdlib.h>
#include <string.h>
#include <math.h>
  
 
 
 
 
 
 
 


#include <stdio.h>
int mp1fnc (int *j);
int f1 (void);
int f (void);
int fbfnc11 (void);
int fbfnc10 (void);
int fbfnc9 (void);
int fbfnc8 (void);
int fbfnc7 (void);
int fbfnc6 (void);
int fbfnc5 (void);
int fbfnc4 (void);
int fbfnc3 (void);
int fbfnc2 (void);
int fbfnc1 (void);
int m3gcod02 (void);
int m3eva271 (void);
int m3mprd06 (void);
int m3eva301 (void);
int m3gcns05 (void);
int mptest41 (void);
int m3eva321 (void);
int mptest18 (void);
int m3eva251 (void);
int scrpz10 (void);
int m3garg02 (void);
int m3eva220 (void);
int main()
{

   printf("*** \n\n");

   m3eva220();   
   m3garg02();   
   scrpz10() ;   
   m3eva251();   
   mptest18();   
   m3eva321();   
   mptest41();   
   m3gcns05();   
   m3eva301();   
   m3mprd06();   
   m3eva271();   
   m3gcod02();   


   printf("\n*** \n");

exit (0);
}

 
 
 


int feaf (void)
{
  {
    int a;
    a=10;
    if( a==10 )
        return 1;
      else
        return 0;
  }
}

int m3eva220 (void)
{
  int a;
  a=20;
  if( a==20 && feaf() )
      printf("M3EVA220 TEST OK \n");
    else
      printf("M3EVA220 TEST NG = %d \n",a);
}

 
 
 

int febf (void)
{
  {
    extern int aa;
    aa=10;
    if( aa==10 )
        return 1;
      else
        return 0;
  }
}

int m3eva251 (void)
{
  int aa;
  aa=20;
  if( aa==20 && febf() )
      printf("M3EVA251 TEST OK \n");
    else
      printf("M3EVA251 TEST NG = %d \n",aa);
}
int aa;

 
 
 

int fecf (void)
{
  struct {
    int a;
    int b;
  } st;
  st.a = 10;
  if( st.a==10 )
      return 1;
    else
      return 0;
}

int m3eva271 (void)
{
  int a;
  a=20;
  if( a==20 && fecf() )
      printf("M3EVA271 TEST OK \n");
    else
      printf("M3EVA271 TEST NG = %d \n",a);
}

 
 
 


int m3eva301 (void)
{
  {
    int fedfnc( int a );
    static int a=20;
    if( a==20 && fedfnc(10) )
        printf("M3EVA301 TEST OK \n");
      else
        printf("M3EVA301 TEST NG = %d \n",a);
  }
}

int fedfnc( int a )
{
  if ( a == 10 )
      return 1;
    else
      return 0;
}

 
 
 


int feef (int a)
{
  if( a == 10 )
      return 1;
    else
      return 0;
}

static int a=20;

int m3eva321 (void)
{
  if( a==20 && feef(10) )
      printf("M3EVA321 TEST OK \n");
    else
      printf("M3EVA321 TEST NG = %d \n",a);
}

 
 
 


int  faf1(int);
int  faf2(float);
int  faf11(char);
int  faf12(signed char);
int  faf13(unsigned char );
int  faf14(int a);
int  faf15(signed int );
int  faf16(unsigned int );
int  faf17(short int );
int  faf18(signed short int );
int  faf19(unsigned short int );
int  faf20(long int );
int  faf21(signed long int);
int  faf22(unsigned long int );
int  faf31(float);
int  faf32(double);
int  faf33(long double);
 
int m3garg02 (void)
{
  char          ch=1;
  signed char   sc=1;
  unsigned char uc=1;
  int           i=1;
  signed int    s=1;
  unsigned int  u=1;
  short int          si=1;
  signed short int   ss=1;
  unsigned short int us=1;
  long  int          li=1;
  signed long        sl=1;
  unsigned long  int ul=1;
  float  f=1.0;
  double d=1.0;
  long double ld=1.0;
  int x,y,z;
  printf("M3GARG02 START\n");

  x=faf1(ch)+faf1(sc)+faf1(uc)+
    faf1(i)+faf1(s)+faf1(u)+
    faf1(si)+faf1(ss)+faf1(us)+
    faf1(li)+faf1(sl)+faf1(ul)+
    (int)faf2(f)+(int)faf2(d)+(int)faf2(ld);
  y=faf11(ch)+faf12(sc)+faf13(uc)+
    faf14(i)+faf15(s)+faf16(u)+
    faf17(si)+faf18(ss)+faf19(us)+
    faf20(li)+faf21(sl)+faf21(ul)+
    (int)faf31(f)+(int)faf32(d)+(int)faf33(ld);
  if (x==15 && y==15)
    printf("M3GARG02 TEST OK\n");
  else {
    printf("M3GARG02 NG\n");
    printf("X=%d\n",x);
    printf("Y=%d\n",y);
  }
  printf("M3GARG02 END  \n");
}
 
int faf1(int a){ return a; }
 
int faf2(float f){ return (int)f; }
 
int faf11(char a){ return (int)a; }
int faf12(signed char a){ return (int)a; }
 int faf13(unsigned char a){ return (int)a; }
 int faf14(int a){ return (int)a; }
 int faf15(signed int a){ return (int)a; }
 int faf16(unsigned int a){ return (int)a; }
 int faf17(short int a){ return (int)a; }
 int faf18(signed short int a){ return (int)a; }
 int faf19(unsigned short int a){ return (int)a; }
 int faf20(long int a){ return (int)a; }
 int faf21(signed long int a){ return (int)a; }
 int faf22(unsigned long int a){ return (int)a; }
 
 int faf31(float f){ return (int)f; }
 int faf32(double d){ return (int)d; }
 int faf33(long double ld){ return (int)ld; }

 
 
 


int m3gcns05 (void)
{
  int                int_;

  printf("M3GCNS05 START\n");

 
 

  int_ = (int)100 + (int)100;
  if (int_ == 200)
    printf("--- M3GCNS05 (39-01) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-01) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)100 - (int)50;
  if (int_ == 50)
    printf("--- M3GCNS05 (39-02) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-02) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)100 * (int)100;
  if (int_ == 10000)
    printf("--- M3GCNS05 (39-03) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-03) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)100 / (int)50;
  if (int_ == 2)
    printf("--- M3GCNS05 (39-04) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-04) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)100 % (int)3;
  if (int_ == 1)
    printf("--- M3GCNS05 (39-05) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-05) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)1 << (int)3;
  if (int_ == 8)
    printf("--- M3GCNS05 (39-06) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-06) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)8 >> (int)3;
  if (int_ == 1)
    printf("--- M3GCNS05 (39-07) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-07) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)100 < (int)101;
  if (int_ == 1)
    printf("--- M3GCNS05 (39-08) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)10 > (int)50;
  if (int_ == 0)
    printf("--- M3GCNS05 (39-09) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)100 <= (int)100;
  if (int_ == 1)
    printf("--- M3GCNS05 (39-10) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)10 >= (int)50;
  if (int_ == 0)
    printf("--- M3GCNS05 (39-11) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)100 == (int)100;
  if (int_ == 1)
    printf("--- M3GCNS05 (39-12) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)1 != (int)1;
  if (int_ == 0)
    printf("--- M3GCNS05 (39-13) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)10 & (int)7;
  if (int_ == 2)
    printf("--- M3GCNS05 (39-14) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-14) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)1 ^ (int)2;
  if (int_ == 3)
    printf("--- M3GCNS05 (39-15) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-15) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)10 | (int)7;
  if (int_ == 15)
    printf("--- M3GCNS05 (39-16) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-16) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)100 && (int)0;
  if (int_ == 0)
    printf("--- M3GCNS05 (39-17) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)0 || (int)100;
  if (int_ == 1)
    printf("--- M3GCNS05 (39-18) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 

  printf("M3GCNS05 END  \n");
}

 
 
 



int m3gcod02 (void)
{
  printf("M3GCOD02 START\n");
  fbfnc1();
  fbfnc2();
  fbfnc3();
  fbfnc4();
  fbfnc5();
  fbfnc6();
  fbfnc7();
  fbfnc8();
  fbfnc9();
  fbfnc10();
  fbfnc11();
  printf("M3GCOD02 END  \n");
}
 
 
int fbfnc1 (void){
  static int i=0;
  static short int s=1;
  static char  c=2;
  static unsigned int ui=3;
  static unsigned short int us=4;
  static unsigned char   uc=5;

  if ((i||i)||(i||c))
    printf("M3GCOD02 FBFNC1-1 OK\n");
  else
    printf("M3GCOD02 FBFNC1-1 NG\n");
  if (((s-s)||(s-s))||((ui*ui-9)||(uc/uc)))
    printf("M3GCOD02 FBFNC1-2 OK\n");
  else
    printf("M3GCOD02 FBFNC1-2 NG\n");
}
 
 
int fbfnc2 (void){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
  static int *ip=&i;
  static short int *sp=&s;
  static char  *cp=&c;

  if ((i&&i)||(s&&c))
    printf("M3GCOD02 FBFNC2-1 OK\n");
  else
    printf("M3GCOD02 FBFNC2-1 NG\n");
  if (((i+i)&&(i*s))||(us[1]&&uc[3]))
    printf("M3GCOD02 FBFNC2-2 OK\n");
  else
    printf("M3GCOD02 FBFNC2-2 NG\n");
}
 
 
int fbfnc3 (void){
  static int i=0,*ip=&i;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
  static struct tag{ int a;} st={1},*stp=&st;

  if ((i||i)||(c&&c))
    printf("M3GCOD02 FBFNC3-1 OK\n");
  else
    printf("M3GCOD02 FBFNC3-1 NG\n");
  if (((*ip)||(ui[1]))||((s+s)&&((*stp).a)))
    printf("M3GCOD02 FBFNC3-2 OK\n");
  else
    printf("M3GCOD02 FBFNC3-2 NG\n");
  if (((f())||(c+3))||(((*stp).a)&&(f()+1)))
    printf("M3GCOD02 FBFNC3-3 OK\n");
  else
    printf("M3GCOD02 FBFNC3-3 NG\n");
}
int f (void)
{
   return 0;
}
 
 
int fbfnc4 (void){
  static int i=0;
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

  if (!(s)||!(i))
    printf("M3GCOD02 FBFNC4-1 OK\n");
  else
    printf("M3GCOD02 FBFNC4-1 NG\n");
  if (!(uni.a)||!(ar[1]))
    printf("M3GCOD02 FBFNC4-2 OK\n");
  else
    printf("M3GCOD02 FBFNC4-2 NG\n");
}
 
 
int fbfnc5 (void){
  static int i=0;
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

  if ((ar[i])||(bit.a))
    printf("M3GCOD02 FBFNC5-1 OK\n");
  else
    printf("M3GCOD02 FBFNC5-1 NG\n");
  if (f()||f1())
    printf("M3GCOD02 FBFNC5-2 OK\n");
  else
    printf("M3GCOD02 FBFNC5-2 NG\n");
  if ((bit.b*ar[2])||(uni.a*bit.a))
    printf("M3GCOD02 FBFNC5-3 OK\n");
  else
    printf("M3GCOD02 FBFNC5-3 NG\n");
}
int f1 (void)
{
  return 1;
}
 
 
int fbfnc6 (void){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};

  if ((s<0)||(uc>ui))
    printf("M3GCOD02 FBFNC6-1 OK\n");
  else
    printf("M3GCOD02 FBFNC6-1 NG\n");
  if ((ar[2]>=s)||(bit.a<=uc))
    printf("M3GCOD02 FBFNC6-2 OK\n");
  else
    printf("M3GCOD02 FBFNC6-2 NG\n");
  if ((bit.b!=bit.b)||(bit.a==bit.a))
    printf("M3GCOD02 FBFNC6-3 OK\n");
  else
    printf("M3GCOD02 FBFNC6-3 NG\n");
}
 
 
int fbfnc7 (void){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};

  if ((i||0)||(ui<uc))
    printf("M3GCOD02 FBFNC7-1 OK\n");
  else
    printf("M3GCOD02 FBFNC7-1 NG\n");
  if (((c-c)||i)||(bit.a>=s))
    printf("M3GCOD02 FBFNC7-2 OK\n");
  else
    printf("M3GCOD02 FBFNC7-2 NG\n");
  if ((ui*i||ar[0])||(bit.a!=bit.b))
    printf("M3GCOD02 FBFNC7-3 OK\n");
  else
    printf("M3GCOD02 FBFNC7-3 NG\n");
  if ((ui*i||ar[0])||(s*s+s))
    printf("M3GCOD02 FBFNC7-4 OK\n");
  else
    printf("M3GCOD02 FBFNC7-4 NG\n");
}
 
 
int fbfnc8 (void){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};

  if ((uc>ui)||(ui||ui))
    printf("M3GCOD02 FBFNC8-1 OK\n");
  else
    printf("M3GCOD02 FBFNC8-1 NG\n");
  if ((c>=uc)||(bit.a||s))
    printf("M3GCOD02 FBFNC8-2 OK\n");
  else
    printf("M3GCOD02 FBFNC8-2 NG\n");
  if ((ui*i!=ar[0])||(bit.a||bit.b))
    printf("M3GCOD02 FBFNC8-3 OK\n");
  else
    printf("M3GCOD02 FBFNC8-3 NG\n");
  if (((int)(ui*i*ar[0]))||(bit.a||bit.b))
    printf("M3GCOD02 FBFNC8-4 OK\n");
  else
    printf("M3GCOD02 FBFNC8-4 NG\n");
}
 
 
int fbfnc9 (void){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};

  if ((i&&0)||(ui<uc))
    printf("M3GCOD02 FBFNC9-1 OK\n");
  else
    printf("M3GCOD02 FBFNC9-1 NG\n");
  if (((c-c)&&i)||(bit.a>=s))
    printf("M3GCOD02 FBFNC9-2 OK\n");
  else
    printf("M3GCOD02 FBFNC9-2 NG\n");
  if ((ui*i&&ar[0])||(bit.a!=bit.b))
    printf("M3GCOD02 FBFNC9-3 OK\n");
  else
    printf("M3GCOD02 FBFNC9-3 NG\n");
  if ((ui*i&&ar[0])||(s*s+s))
    printf("M3GCOD02 FBFNC9-4 OK\n");
  else
    printf("M3GCOD02 FBFNC9-4 NG\n");
}
 
 
int fbfnc10 (void){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};

  if ((uc>ui)||(ui&&ui))
    printf("M3GCOD02 FBFNC10-1 OK\n");
  else
    printf("M3GCOD02 FBFNC10-1 NG\n");
  if ((c>=uc)||(bit.a&&s))
    printf("M3GCOD02 FBFNC10-2 OK\n");
  else
    printf("M3GCOD02 FBFNC10-2 NG\n");
  if ((ui*i!=ar[0])||(bit.a&&(bit.b+1)))
    printf("M3GCOD02 FBFNC10-3 OK\n");
  else
    printf("M3GCOD02 FBFNC10-3 NG\n");
  if (((int)(ui*i*ar[0]))||(bit.a&&bit.a))
    printf("M3GCOD02 FBFNC10-4 OK\n");
  else
    printf("M3GCOD02 FBFNC10-4 NG\n");
}
 
 
int fbfnc11 (void){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};

  if (((i||i)||(i||i))||((s&&s)&&(ui&&ui)))
    printf("M3GCOD02 FBFNC11-1 OK\n");
  else
    printf("M3GCOD02 FBFNC11-1 NG\n");
  if (((bit.a&&bit.b)||(uc&&i))||((i||ar[2])&&(i||bit.a)))
    printf("M3GCOD02 FBFNC11-2 OK\n");
  else
    printf("M3GCOD02 FBFNC11-2 NG\n");
  if (((bit.a||bit.b)||(uc&&i))||((i||ar[2])&&(i&&bit.a)))
    printf("M3GCOD02 FBFNC11-3 OK\n");
  else
    printf("M3GCOD02 FBFNC11-3 NG\n");
  if ((i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&i)||
      (i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||s&&c))
    printf("M3GCOD02 FBFNC11-4 OK\n");
  else
    printf("M3GCOD02 FBFNC11-4 NG\n");
}
 
 
 





   struct  mp1t1  {
     int  a ;
     char b ;
               } ;
   int mp1fnc1 (struct mp1t1 q)
   {
       q.a=q.a+1;
       return(q.a);
   }
int mptest18 (void)
   {
       struct mp1t1 p ; int i;
       int mp1fnc1();
       p.a=3 ;
       p.b='9' ;
       i = mp1fnc1(p) ;
       if(i==4)
        printf("*** MPTEST18 OK ***\n") ;
       else
        printf("*** MPTEST18 NG ***\n") ;
   }

 
 
 




#define NULL  0
#define proc     {
#define endproc  }




#define      num      4

#define      bexnum   2

  int *mp1fnc2(),mp1fnc4();
int  mp1fnc4(a)
      int *a ;
proc
      *a=1 ;
endproc
  void mpafnc1(),mp1fnc3(),mp1fnc5();
 int  mptest41()
  {
       mpafnc1();
       mp1fnc3();
       mp1fnc5();
  }
  void mpafnc1 (void)
  {
       static int *(*eee)()=mp1fnc2;
       if(*(*eee)() == 10)
        printf("*** MPTEST41 CHECK01 OK ***\n");
       else
        printf("*** MPTEST41 CHECK01 NG ***\n");
  }
  int *mp1fnc2 (void)
  {
       static int ooo=0;
       ooo=ooo+10;
       return(&ooo);
  }
  void mp1fnc3 (void)
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
  void mp1fnc5 (void)
  {
       void   mp1fnc6();
       static int b=20,*e;
       e=&b;
       mp1fnc6(e);
  }
  void mp1fnc6 (
 
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
int mp1fnc (int *j)
{
*j=5;
return 0;
}



 
 
 


#ifdef v10
 

#define pr(format,value) printf("value = %format ",(value))
#define nl putchar('\n')
#define print1(f,x1) pr(f,x1); nl
#define print2(f,x1,x2)  pr(f,x1); print1(f,x2)
#define print3(f,x1,x2,x3)  pr(f,x1); print2(f,x2,x3)
#define print4(f,x1,x2,x3,x4)  pr(f,x1); print3(f,x2,x3,x4)

int scrpz10 (void)
{
      int x,y=1,z;

      if( y|=0 ) x=5;
      print1(d,x);

      if( y==0 ) x=3;
      else       x=5;
      print1(d,x);

      x=1;
      if( y<0 ) if( y>0 ) x = 3;
      else x=5;
      print1(d,x);

      if( z=y<0 ) x=3;
      else if( y==0 ) x=5;
      else x=7;
      print2(d,x,z);

      if( x=(y==0) ) x=5; x=3;
      print2(d,x,z);

      if( x=z=y ); x=3;
      print2(d,x,z);
}
#else

static char *data[] = {
 "x = 5",
 "x = 5",
 "x = 1",
 "x = 7",
 "z = 0",
 "x = 3",
 "z = 0",
 "x = 3",
 "z = 1"
};
int check (char *p)
{
    static int i=0;
    if( strcmp(p,data[i++]) ) puts(" NG ");
}
#define pr(format,value) \
{char buf[10];sprintf(buf,#value" = %"#format,(value));check(buf);}
#define nl printf("\n")
#define print1(f,x1) pr(f,x1); nl
#define print2(f,x1,x2)  pr(f,x1); print1(f,x2)
#define print3(f,x1,x2,x3)  pr(f,x1); print2(f,x2,x3)
#define print4(f,x1,x2,x3,x4)  pr(f,x1); print3(f,x2,x3,x4)

int scrpz10 (void)
{
      int x,y=1,z;

      if( y|=0 ) x=5;
      print1(d,x);

      if( y==0 ) x=3;
      else       x=5;
      print1(d,x);

      x=1;
      if( y<0 ) if( y>0 ) x = 3;
      else x=5;
      print1(d,x);

      if( z=y<0 ) x=3;
      else if( y==0 ) x=5;
      else x=7;
      print2(d,x,z);

      if( x=(y==0) ) x=5; x=3;
      print2(d,x,z);

      if( x=z=y ); x=3;
      print2(d,x,z);
      puts(" SCRPZ10 PASS ");
}
#endif

