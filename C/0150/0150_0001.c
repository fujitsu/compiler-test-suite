#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int  f1(int);
int  f2(float);
int  f11(char);
int  f12(signed char);
int  f13(unsigned char );
int  f14(int a);
int  f15(signed int );
int  f16(unsigned int );
int  f17(short int );
int  f18(signed short int );
int  f19(unsigned short int );
int  f20(long int );
int  f21(signed long int);
int  f22(unsigned long int );
int  f31(float);
int  f32(double);
int  f33(long double);
int main()
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
  printf(" START\n");
 
  x=f1(ch)+f1(sc)+f1(uc)+
    f1(i)+f1(s)+f1(u)+
    f1(si)+f1(ss)+f1(us)+
    f1(li)+f1(sl)+f1(ul)+
    (int)f2(f)+(int)f2(d)+(int)f2(ld);
  y=f11(ch)+f12(sc)+f13(uc)+
    f14(i)+f15(s)+f16(u)+
    f17(si)+f18(ss)+f19(us)+
    f20(li)+f21(sl)+f21(ul)+
    (int)f31(f)+(int)f32(d)+(int)f33(ld);
  if (x==15 && y==15)
    printf(" OK\n");
  else {
    printf(" NG\n");
    printf("X=%d\n",x);
    printf("Y=%d\n",y);
  }
  printf(" END  \n");
exit (0);
}
int f1(int a){ return a; }
int f2(float f){ return (int)f; }
int f11(char a){ return (int)a; }
int f12(signed char a){ return (int)a; }
int f13(unsigned char a){ return (int)a; }
int f14(int a){ return (int)a; }
int f15(signed int a){ return (int)a; }
int f16(unsigned int a){ return (int)a; }
int f17(short int a){ return (int)a; }
int f18(signed short int a){ return (int)a; }
int f19(unsigned short int a){ return (int)a; }
int f20(long int a){ return (int)a; }
int f21(signed long int a){ return (int)a; }
int f22(unsigned long int a){ return (int)a; }
int f31(float f){ return (int)f; }
int f32(double d){ return (int)d; }
int f33(long double ld){ return (int)ld; }
